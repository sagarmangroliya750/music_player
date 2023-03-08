// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MusicPlayerList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title:Text("New song lists track 1",style:TextStyle(color:Colors.white),),
        subtitle:Text("Unknown songs",style:TextStyle(color: Colors.white60,fontSize:13)),
        trailing: IconButton(splashColor:Colors.transparent,
            onPressed: () {
              showModalBottomSheet(
                isDismissible:false,
                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),
                backgroundColor:Color(0xff404040),
                context: context, builder: (context) {
                return Container(
                    height:350,
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Add to Playlist",style:TextStyle(color:Colors.white,fontSize:16)),
                        Text("Send Song",style:TextStyle(color:Colors.white,fontSize:16)),
                        Text("Set as Ringtone",style:TextStyle(color:Colors.white,fontSize:16)),
                        Text("View Details",style:TextStyle(color:Colors.white,fontSize:16)),
                        Text("Delete Song",style:TextStyle(color:Colors.white,fontSize:16)),
                        Divider(
                          endIndent:20,indent:20,color:Colors.white70,
                        ),
                        InkWell(
                          onTap: () { Navigator.pop(context);},
                          child:Container(
                            height:40,width:double.infinity,
                            alignment:Alignment.center,
                            margin:EdgeInsets.only(bottom:0),
                            child: Text("Cancel",style:TextStyle(color:Colors.red,fontSize:16)),
                          ),
                        )
                      ],
                    )
                );
              },);
            }, icon:Icon(Icons.more_vert,color:Colors.white60,size:19)),
      );
    },);
  }

}