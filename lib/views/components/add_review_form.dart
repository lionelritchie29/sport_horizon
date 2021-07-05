import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/models/product.dart';
import 'package:sport_horizon_flutter/models/product_review.dart';

class AddReviewForm extends StatefulWidget {
  Product _product;

  AddReviewForm(this._product);

  @override
  State<StatefulWidget> createState() => AddReviewFormState(_product);
}

class AddReviewFormState extends State<AddReviewForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  Product _product;
  late var _ctx;

  AddReviewFormState(this._product);

  @override
  Widget build(BuildContext context) {
    _ctx = context;
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
                  controller: _nameController,
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
                  controller: _contentController,
                  decoration: InputDecoration(
                      hintText: 'Input Review ...',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                        child: Text('Submit'), onPressed: validate)),
              ],
            )));
  }

  void validate() {
    if (_nameController.text.isEmpty | _contentController.text.isEmpty) {
      var snackbar =
          SnackBar(content: const Text('Name or Content must not be empty'));
      ScaffoldMessenger.of(_ctx).showSnackBar(snackbar);
    } else {
      addReview(_nameController.text, _contentController.text);

      _nameController.text = '';
      _contentController.text = '';

      var snackbar = SnackBar(content: const Text('Success added review'));
      ScaffoldMessenger.of(_ctx).showSnackBar(snackbar);
    }
  }

  void addReview(String name, String content) {
    setState(() {
      _product.reviews.add(new ProductReview(name, content));
    });
  }
}
