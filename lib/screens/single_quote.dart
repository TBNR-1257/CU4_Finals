import 'package:flutter/material.dart';
import 'package:quote_app/model/quotes_model.dart';

class SingleQuote extends StatelessWidget {
  final Quotes quotes;
  const SingleQuote({super.key, required this.quotes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Quiz ID: ${quotes.id}",
          style: const TextStyle(
              color: Color.fromARGB(255, 22, 90, 136),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Container(
            width: 350,
            height: 350,
            padding: const EdgeInsets.all(25),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.grey, width: 2.0),
            //   borderRadius: BorderRadius.circular(8.0),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    quotes.quote,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  quotes.author,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            )),
        const SizedBox(height: 50),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 22, 90, 136)),
            child: const Text(
              "Back",
              style: TextStyle(color: Colors.white),
            ))
      ],
    )));
  }
}
