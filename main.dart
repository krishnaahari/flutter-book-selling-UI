import 'package:flutter/material.dart';
import 'package:flutter_application_1/phome.dart';


void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override 
     Widget build(BuildContext context){
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: homeproject(),
       );
     }
}
