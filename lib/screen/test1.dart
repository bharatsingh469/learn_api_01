import 'package:app_api_1/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestProfile extends StatefulWidget {
  const TestProfile({Key? key}) : super(key: key);

  @override
  State<TestProfile> createState() => _TestProfileState();
}

class _TestProfileState extends State<TestProfile> {
  List<ProfileModel> profileList = [];

  Future<List<ProfileModel>> getProfileApi() async {
    try {
      final response = await http.get(
          Uri.parse('https://cioklub.indeftts.net/mobile_api/profile_get/'),
          headers: <String, String>{"x-api-key": "f4fd127ec8f0406e"});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        for (Map<String, dynamic> i in data) {
          profileList.add(ProfileModel.fromJson(i));
        }

        return profileList;
      } else {
        print('else ma aaa gya ');
        print(response.statusCode);
        throw Exception('Failed to load profile data');
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile API'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getProfileApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return ListView.builder(
                    key: UniqueKey(),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  snapshot.data![index].data!.title.toString()),
                              SizedBox(
                                height: 20,
                              ),
                              Text(snapshot.data![index].data!.name.toString()),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  snapshot.data![index].data!.email.toString()),
                              SizedBox(
                                height: 20,
                              ),
                              Text(snapshot.data![index].data!.mobileNumber
                                  .toString()),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Text('No data available');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
