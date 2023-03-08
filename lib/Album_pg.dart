// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class Album_pg extends StatelessWidget{

  List audios  = ["Audio Merge","Google Playsongs","Downloads","Unknown Album"];
  List sub_aud = ["5 Songs","15 Songs","100 Songs","Unknown Album"];


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:audios.length,
      itemBuilder: (context, index) {
      return ListTile(
        leading: Container(
          height:50,width:50,
          decoration:BoxDecoration(color:Colors.grey.shade800,borderRadius:BorderRadius.circular(7)),
          child:Icon(Icons.music_note,color:Colors.white70),
        ),
        title:Text("${audios[index]}",style:TextStyle(color:Colors.white),),
        subtitle:Text("${sub_aud[index]}",style:TextStyle(color: Colors.white60,fontSize:13)),
        trailing: IconButton(splashColor:Colors.transparent,
            onPressed: () {

            }, icon:Icon(Icons.arrow_forward_ios,color:Colors.white54,size:18)),
      );
    },);
  }

}