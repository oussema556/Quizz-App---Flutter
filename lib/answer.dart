import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;
  Answer(this.selectHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 6),
      child:
          RaisedButton(
            color: Colors.blue,
            padding: EdgeInsets.all(12),
            textColor: Colors.white,
            child: Text(answer),
            onPressed: selectHandler,
          ),
    );
  }
}
