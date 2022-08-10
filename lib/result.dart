import 'package:flutter/material.dart';

void main() {}

class Result extends StatelessWidget {
  final Function() R;

  final ResultScore;

  const Result(this.R, this.ResultScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row (
            children :[Text(
                "your score $ResultScore /100"
                ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        )              ])

        ,TextButton(
          onPressed: R,
          child: Text("clicke here to reset your quiz",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
