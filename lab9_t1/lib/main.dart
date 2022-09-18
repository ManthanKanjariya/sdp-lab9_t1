import 'package:flutter/material.dart';
 // Absolute path
import 'quote.dart'; // due to same directory file relative path will work
import 'quote_card.dart'; // Relative path

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'Manthan'),
    Quote(author: 'Manthan', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Manthan'),
  ];
/*
Widget quoteTemplate(quote){
return QuoteCard(quote: quote,);
}
*/
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(

        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'quote.dart';
// import 'package:lab9_t1/quote_card.dart';
//
// void main() => runApp(MaterialApp(
//   home: EchoList(),
// ));
//
//
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
// class _EchoListState extends State<EchoList> {
//
//   List<Quote> quotes = [
//     Quote(text: 'The truth is realy pure and never simple',author:
//     'Manthan'),
//
//     Quote(author: 'Manthan', text: 'I see humans but no humanity'),
//     Quote(text: 'The time is always right to do what is right',author:
//     'Manthan'),
//   ];
//   Widget quoteTemplate(quote){
//     return QuoteCard(quote: quote,);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red[100],
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
//
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//       ),
//     );
//   }
// }
//
// // class QuoteCard extends StatelessWidget {
// //   final Quote quote;
// //   QuoteCard({required this.quote,});
// //
// //   @override
// //
// //   Widget build(BuildContext context) {
// //
// //     return Card(
// //       margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
// //       child: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Column(
// //
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             Text(
// //               quote.text,
// //               style: TextStyle(
// //                 fontSize: 20,
// //
// //                 color: Colors.deepPurple,
// //
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             Text(
// //               quote.author,
// //               style: TextStyle(
// //                 fontSize: 26,
// //
// //                 color: Colors.deepPurple,
// //
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }