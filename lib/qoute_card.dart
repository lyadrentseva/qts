import 'package:flutter/material.dart';
import 'qts.dart';

class QuoteCard extends StatelessWidget {

  final Quote qoute;
  final VoidCallback delete;
  QuoteCard({required this.qoute, required this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                qoute.text,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.pink
                ),
              ),
              SizedBox(height: 6.0,),
              Text(
                qoute.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.indigo

                ),
              ),
              SizedBox(height: 8.0),

              TextButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
                  label: Text('delete quote'))
            ],
          ),

        ));
  }
}