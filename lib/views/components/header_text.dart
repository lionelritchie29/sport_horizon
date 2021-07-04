import 'package:flutter/cupertino.dart';

class HeaderText extends StatelessWidget {
  String text;

  HeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.only(top: 20),
      child: Text(
        this.text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        textAlign: TextAlign.left,
      ),
    );
  }
}
