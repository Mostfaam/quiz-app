import 'package:flutter/material.dart';

void main (){

}
class Question extends StatelessWidget {
final questionText ;
  Question (this.questionText) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child:
          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Text(
            questionText,
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),

          ),



      ),
    );
  }
}


