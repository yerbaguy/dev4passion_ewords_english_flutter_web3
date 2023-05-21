import 'package:dev4passion_ewords_english_flutter_web3/EWordsModel.dart';
import 'package:flutter/material.dart';

class Words extends StatefulWidget {
  const Words({ Key? key }) : super(key: key);

  @override
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {

     var engword = ['case'];

    var engwords = ['kind','hardly','least','particular'];

    var mergedwords = engword + engwords;

    List<String> engwordss = ['kind','hardly','least','particular'];

    final List<EWordsModel> EWord = List.generate(
      engwordss.length,
      (index) => EWordsModel('${engwordss[index]}'));

    ////works
   ///// return Scaffold(
    ////
    
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Words"),
        ),
        body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
           // new Padding(padding: new EdgeInsets.all(15.00)),
           new Padding(padding: new EdgeInsets.all(50.00)),
           //new Padding(padding: new EdgeInsets.symmetric(horizontal: 50.00)),
            new Text("kind"),
           // new Padding(padding: new EdgeInsets.all(50.00)),
            // new Padding(padding: new EdgeInsets.symmetric(horizontal: BorderSide.strokeAlignCenter)),
            new Padding(padding: new EdgeInsets.symmetric(horizontal: 50.00)),

            new Expanded(
              child: new ListView.builder(
                itemCount: engwordss.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(EWord[index].eword_explained, textAlign: TextAlign.center,),
                      onTap: () {
                        print(engwordss[index]);
                      },
                    )
                  );
                },
              )),
              // new Padding(padding: new EdgeInsets.symmetric(horizontal: BorderSide.strokeAlignCenter)),
              new Padding(padding: new EdgeInsets.symmetric(horizontal: 50.00)),
            ]
          ),
        ),
      ),



      ),


      ////works
      // body: ListView.builder(
      //   itemCount: engwordss.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text(EWord[index].eword_explained),
      //         onTap: () {
      //          // print('tapped');
      //           print(engwordss[index]);
      //         },
      //       ),
      //     );
      //   },
      // ),
      ////


    );

    // return new MaterialApp(
    //   home: new Scaffold(
    //     appBar: new AppBar(
    //       title: new Text("Words"),
    //     ),
    //     body: new Container(
    //       child: new Center(
    //         child: new Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children:<Widget> [
    //             new Text("kind"),
    //             new Padding(padding: new EdgeInsets.all(15.00)),

    //             new Expanded(
    //               child: new ListView.builder(itemBuilder: (context, index) {
                    
                    
    //                 // return GestureDetector(
    //                 //   onTap: () {
    //                 //     print(engwords[index]);
    //                 //   },
    //                 // );

    //                 return Card(
    //                   child: ListTile(
    //                     title: Text(engwords[index]),
    //                     leading: SizedBox(
    //                       width: 50,
    //                       height: 50,
    //                     ),
    //                     onTap: () {
    //                       Navigator.of(context.push(MaterialPageRoute(builder: (context)-> engwords[index])))
    //                     },
    //                   )
    //                 )



    //               //   return Text(engwords[index]);
    //               // },
    //               //  itemCount: engwords.length,
    //               // ))




    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    
    
    
    
    //return Scaffold();
    
    
    
    // return Container(
      
    // );
  }
}