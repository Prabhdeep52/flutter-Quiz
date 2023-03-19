import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9.0,4.0,9.0,4.0),
      child: Container(
        width: double.infinity,
        child: FilledButton(
          onPressed: () => {selectHandler() } ,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,

              )),
          child:  Text(answerText),
        ),
      ),
    );
  }
}
