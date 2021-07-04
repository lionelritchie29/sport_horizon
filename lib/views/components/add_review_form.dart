import 'package:flutter/material.dart';

class AddReviewForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddReviewFormState();
}

class AddReviewFormState extends State<AddReviewForm> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('Name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Input Name ...',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5, top: 15),
                  child: Text('Review'),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Input Review ...',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                        child: Text('Submit'), onPressed: () => {})),
              ],
            )));
  }
}
