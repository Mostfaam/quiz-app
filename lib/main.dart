import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.table_rows,
              color: Colors.white,
              size: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 25,
              ),
            )
          ],
          backgroundColor: Colors.redAccent,
          elevation: 10,
          title: const Center(
            child: Text("Quiz App"),
          ),
        ),
        body: const Home(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var questionIndex = 0;
  int totalScore = 0;

  void answerQuestion(score) {
    totalScore = score + totalScore;
    setState(() {
      questionIndex += 1;
    });
    // print(_questionIndex);
    // print("Answer chosen");
  }

  void restQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  final question = [
  {
  "questionText": "Who's the pre president to USA ?",
  "answer": [
  {"text": "Jo Biden", "score": 0},
  {"text": "Barak Obama", "score": 0},
  {"text": "Donald Tramp", "score": 10},
  {"text": "Hillary Kenton", "score": 0},
  ]
//3
},
{
"questionText": "What's the capital of Germain ?",
"answer": [
{"text": "London", "score": 0},
{"text": "Berlin", "score": 10},
{"text": "Munich", "score": 0},
{"text": "Leipzig", "score": 0},
] //2
},
{
"questionText": "Who's the president to France ?",
"answer": [
{"text": "Angela Merkle", "score": 0},
{"text": "Immanuel Macron", "score": 10},
{"text": "Vladimir Putin", "score": 0},
{"text": "Francois Hollande", "score": 0},
] //2
},
{
"questionText": "What's the capital of UAE ?",
"answer": [
{"text": "jerusalem", "score": 0},
{"text": "Baghdad", "score": 0},
{"text": "Doha", "score": 0},
{"text": "Abu Dhabi", "score": 10},
] //4
},
{
"questionText": "Who's the first president to Tunes ?",
"answer": [
{"text": "Habib Bourguiba", "score": 10},
{"text": "Zine El Abidine Ben Ali", "score": 0},
{"text": "Moncef Marzouki", "score": 0},
{"text": "Kais Saied", "score": 0},
] //1
},
{
"questionText": "What's the capital of Iraq ?",
"answer": [
{"text": "Baghdad", "score": 10},
{"text": "Damascus", "score": 0},
{"text": "Basra", "score": 0},
{"text": "Karbala", "score": 0},
] //1
},
{
"questionText": "Who's the president to SA ?",
"answer": [
{"text": "Mohammed Ben Salman", "score": 0},
{"text": "Abdullah Ben Abdulazeez", "score": 0},
{"text": "Salman Ben Abdulazeez", "score": 10},
{"text": "Faisal Ben Abdulazeez", "score": 0},
] //3
},
{
"questionText": "What's the capital of Palestine ?",
"answer": [
{"text": "jerusalem", "score": 10},
{"text": "Abu Dies", "score": 0},
{"text": "Ram Allah", "score": 0},
{"text": "Abu Dhabi", "score": 0},
] //1
},
{
"questionText": "Who's the president to North Korea ?",
"answer": [
{"text": "Yoon Seok Yoel", "score": 0},
{"text": "Kim Jong-un", "score": 10},
  {"text": "Nguyen Phu Trong", "score": 0},
  {"text": "Kim Jong Il", "score": 0},
] //2
},
    {
      "questionText": "What's the capital of Somali ?",
      "answer": [
        {"text": "Addis Ababa", "score": 0},
        {"text": "Conakry", "score": 0},
        {"text": "Khartoum", "score": 0},
        {"text": "Mogadishu", "score": 10},
      ] //4
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: questionIndex < question.length
            ? Quiz(question, questionIndex, answerQuestion)
            : Result(restQuiz,totalScore));
  }
}