import 'package:flutter/material.dart';

import 'EWordsModel.dart';

class Learn extends StatefulWidget {
  const Learn({ Key? key }) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {

    var engword = ['case'];

    var engwords = ['kind','hardly','least','particular'];

    var mergedwords = engword + engwords;

       List<String> engwordss = ['kind','hardly','least','particular'];

    final List<EWordsModel> EWord = List.generate(
      engwordss.length,
      (index) => EWordsModel('${engwordss[index]}'));
    
    // return Scaffold();

        ////// shows two lists
        // return Scaffold(
        //   body: ListView.builder(itemBuilder: (context, index) {
        //     // return Text(engwords[index]);
        //     return Text(mergedwords[index]);
            
        //   },
        //   // itemCount: engwords.length,
        //             itemCount: mergedwords.length,
        //   )
        // );
        /////
        /////

        

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








       ///////////////////////
      //  return Scaffold(
      //   appBar: AppBar(
      //     title: Text("Learn"),
      //   ),
      //   body: Column(children: [
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height + 0.13,
      //       decoration: BoxDecoration(
      //         color: Colors.deepPurple..withOpacity(.4),
      //         borderRadius: BorderRadius.circular(10)
      //          ),
      //          child: Center(
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //             child: Column(
      //               children: [
      //                 // SizedBox(height: 12,),
      //                 Text("kind", style: TextStyle(fontWeight: FontWeight.bold),),
      //                 SizedBox(height: 12,),
      //                 //Text("kind", style: TextStyle(fontWeight: FontWeight.bold),),
      //                 ListView.builder(
      //                   shrinkWrap: true,
      //                   itemBuilder: (context, index) {
      //                    return Text(mergedwords[index]);


      //                   // return GestureDetector(
      //                   //   onTap: () {
      //                   //     print(mergedwords[index]);

      //                   //   }
                          
      //                   //   ,);
      //                 },
      //                   itemCount: mergedwords.length,
      //                 )
 
      //               ],
      //             ),

      //             // child: new ListView.builder(itemBuilder: (context, index) {
      //             //   return Text(mergedwords[index]);
      //             // },
      //             // itemCount: mergedwords.length,
      //             // )

                  
                  
      //             ),
                  


      //             // child: new ListView.builder(itemBuilder: (context, index) {
      //             //   return Text(mergedwords[index]);
      //             // },
      //             // itemCount: mergedwords.length,,
      //             // )

               

      //          ),

               
      //     ),

      //     // SingleChildScrollView(
      //     //   physics: ScrollPhysics(),
      //     //   child: Column(children: [
      //     //     ListView.builder(physics: NeverScrollableScrollPhysics(),
      //     //     shrinkWrap: true,
      //     //     itemCount: mergedwords.length,
      //     //     itemBuilder: (context, index) {
      //     //       return Text(mergedwords[index]);
      //     //     },)
      //     //   ],)
      //     // )

      //     // SizedBox(height: 20,),
      //     // ListView.builder(
      //     //   shrinkWrap: true,
      //     //   itemBuilder: (context, index) {

      //     //   return Text(mergedwords[index]);
      //     // },
      //     // itemCount: mergedwords.length,
      //     // )


      //   ],),




        




        
      //  );
      ////////////////////////












    // return Container(
      
    // );
  }
}