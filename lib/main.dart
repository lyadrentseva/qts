import 'package:flutter/material.dart';
import 'qts.dart';
import 'qoute_card.dart';


void main() => runApp( MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  //const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'dsdfsds', author: 'author 1'),
    Quote(text: 'eedef-dsdfsds', author: 'author 2'),
    Quote(text: 'fdf00099***dsdfsds', author: 'author 3')

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        //#children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        children: quotes.map((quote) => QuoteCard(
            qoute: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }

        )).toList(),
      ),
    );
  }
}





