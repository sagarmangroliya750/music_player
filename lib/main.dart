// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:demo(),debugShowCheckedModeBanner:false,));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        title:Image.asset("myimg/music_img.png",fit:BoxFit.fill,height:90),
        actions: [
          Icon(Icons.search_rounded,color:Colors.red,),
          SizedBox(width:20),
          Icon(Icons.more_vert,color:Colors.red,),
          SizedBox(width:10)
        ],
      ),
      body:Column(
        children: [
          Container(
            margin:EdgeInsets.only(top:10),
            width:double.infinity,
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Text("Songs",style:TextStyle(color:Colors.red,fontSize:16)),
                Text("Artists",style:TextStyle(color:Colors.white,fontSize:16)),
                Text("Albums",style:TextStyle(color:Colors.white,fontSize:16)),
                Text("Playlist",style:TextStyle(color:Colors.white,fontSize:16)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
