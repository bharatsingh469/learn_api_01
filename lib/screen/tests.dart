// import 'package:app_api_1/model/profile_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class TestProfile extends StatefulWidget {
//   const TestProfile({super.key});

//   @override
//   State<TestProfile> createState() => _TestProfileState();
// }

// class _TestProfileState extends State<TestProfile> {
//   List<ProfileModel> profileList = [];
//   Future<List<ProfileModel>> getProfileApi() async {
//     final response = await http
//         .get(Uri.parse('https://cioklub.indeftts.net/mobile_api/profile_get/'));
//     var data = jsonDecode(response.body.toString());
//     headers:
//     <String, String>{"x-api-key": "f4fd127ec8f0406e"};
    
//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> i in data) {
//         profileList.add(ProfileModel.fromJson(i));
//       }

//       return profileList;
//     } else {
//       print('login fail h');
//       return profileList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Api'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//                 future: getProfileApi(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return Text('Loadiing');
//                   } else {
//                     return ListView.builder(
//                         itemCount: profileList.length,
//                         itemBuilder: (context, index) {
//                           return Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Card(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     profileList[index].data!.title.toString(),
//                                   ),
//                                   SizedBox(height: 20,),
//                                   Text(
//                                     profileList[index].data!.name.toString(),
//                                   ),
//                                   SizedBox(height: 20,),
//                                   Text(
//                                     profileList[index].data!.email.toString(),
//                                   ),
//                                   SizedBox(height: 20,),
//                                   Text(
//                                     profileList[index].data!.mobileNumber.toString(),
//                                   ),

//                                 ],
//                               ),
//                             ),
//                           );
//                         });
//                   }
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
