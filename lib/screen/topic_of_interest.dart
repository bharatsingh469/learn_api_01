import 'package:flutter/material.dart';

class TopicListScreen extends StatefulWidget {
  const TopicListScreen({super.key});

  @override
  State<TopicListScreen> createState() => _TopicListScreenState();
}

class _TopicListScreenState extends State<TopicListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
             // onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    labelText: 'Search',
                     labelStyle: TextStyle(color: Colors.black, fontSize: 18),
          floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
               // prefix: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
