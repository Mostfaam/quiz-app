import 'package:flutter/material.dart';
void main (){

}
class Answer extends StatelessWidget {
  final String answerText;
  final Function() x ;
  const Answer(this.answerText , this.x)  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(

        onPressed: x,

        child: Text (answerText,style: TextStyle(fontSize: 25),),
      ),
    );
  }
}
