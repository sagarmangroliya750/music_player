// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Artists_pg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:1,
      itemBuilder: (context, index) {
      return ListTile(
        title:Text("Unknown Artists",style:TextStyle(color:Colors.white),),
        subtitle:Text("3 songs",style:TextStyle(color: Colors.white60,fontSize:13)),
        trailing: IconButton(
            splashColor:Colors.transparent,
            onPressed: () {

            }, icon:Icon(Icons.arrow_forward_ios,color:Colors.white54,size:18)),
      );
    },);
  }

}