

import 'package:flutter/material.dart';
import 'package:flutter_application_1/phome.dart';


// class secondpage extends StatefulWidget{
//   @override
//     _secondpage createState()=> _secondpage();
// }


class secondpage extends StatelessWidget{
final carditem items;

const secondpage({
  Key?key,
  required this.items,
}) :super(key:key);


  @override
   Widget build(BuildContext context){
     return Scaffold(
             body:SingleChildScrollView(
             
              child:Container(
              //  width: 200,
              // color: Colors.yellow[100],
               height: 900,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children:[
                       Container(
                          margin: EdgeInsets.only(top: 30),
                   child:IconButton(onPressed: (){
                        Navigator.pop(context);
                   }, icon: Icon(Icons.arrow_back,color: Colors.amber[600],)),
                       ),
                  Container(
                    
                    margin: EdgeInsets.only(top: 30,left: 4),
                       child: Text("Your Book is here:-",
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w600,
                         fontFamily: "verdana",
                          color: Colors.red,
                       ),
                       ),
                  ),
                     ]
                   ),
                   
                     Container(
                       height: 350,
                     margin: EdgeInsets.only(top: 20,left: 40,right: 40),
                      child:Material(
                        child: Ink.image(
                          fit: BoxFit.fill,
                          image:  AssetImage(items.image)),
                      ),
                   ),
                   Container(
                    margin: EdgeInsets.only(top: 20,left: 90),
                       child: Text("Book Name : Leaving TIme \nPrice : @45 \nAuthor : Jodi Picoult",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w300,
                         fontFamily: "verdana",
                          color: Colors.black,
                       ),
                       ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(left: 20),
                       child:Text("Book's Details :",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  Expanded(child:
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 60),
                       child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, malesuada eu turpis sit amet, pharetra molestie nunc. Proin mollis ultricies sodales. Nulla sagittis justo ut velit laoreet, et volutpat nibh varius. Quisque sit amet nulla turpis. Phasellus rutrum purus non neque ornare tempor. Nunc tempus in lacus in laoreet. Etiam in lectus dolor. Ut eget commodo elit. Nunc nisi dolor, aliquet ut turpis eu, blandit condimentum neque. Morbi porta diam nec finibus dignissim. Proin egestas vulputate sem. In mollis et sapien nec pulvin",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w300,
                         fontFamily: "verdana",
                          color: Colors.black,
                       ),
                       ),
                  ),
                  ),
                 ]
                   ),
               ),
             ),
               bottomNavigationBar: BottomAppBar(
                 child: Row(
                   children: [
                     Expanded(child:Container(
                       color: Colors.amber[700],
                     child: FlatButton(onPressed: (){},
                     
                     child: Text("BUY NOW",style: TextStyle(fontSize: 20,color: Colors.white),),
             ),
                     ))
                   ],
                 ),
               )
     );
   }
}
