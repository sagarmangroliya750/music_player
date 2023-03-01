// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, library_private_types_in_public_api, use_key_in_widget_constructors

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

    final size = MediaQuery.of(context).size;

    return Scaffold(
      persistentFooterButtons: [
       Container(
         margin:EdgeInsets.only(bottom:10),
         height:65,width:size.width,
         decoration:BoxDecoration(color:Colors.white24.withOpacity(0.2),
             borderRadius:BorderRadius.vertical(top: Radius.circular(25),bottom:Radius.circular(35))),
       child:Row(
         mainAxisAlignment:MainAxisAlignment.spaceEvenly,
         children: [
           Container(
             height:40,width:40,
             decoration:BoxDecoration(color:Colors.grey.shade800,borderRadius:BorderRadius.circular(10)),
             child:Icon(Icons.music_note,color:Colors.white70),
           ),
           Container(
             height:30,width:150,
             alignment:Alignment.centerLeft,
             child: Text(" Playing Music...",style:TextStyle(fontSize:17,color:Colors.white)),
           ),
           Container(
             height:50,width:120,
             child:Row(
               mainAxisAlignment:MainAxisAlignment.spaceAround,
               children: [
                 Icon(Icons.skip_previous_outlined,color:Colors.white,size:22),
                 Container(
                   height:40,width:40,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),border:Border.all(color:Colors.blue)),
                   child:IconButton(onPressed: () {

                   }, icon:Icon(Icons.play_arrow_sharp,color:Colors.red,size:23 ))
                 ),
                 Icon(Icons.skip_next_outlined,color:Colors.white,size:22),
               ],
             )
           )
         ],
       ),
       )
      ],

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
            height:40,
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
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title:Text("New song lists track 1",style:TextStyle(color:Colors.white),),
                subtitle:Text("Unknown songs",style:TextStyle(color: Colors.white60)),
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
                             Divider(color:Colors.white30,
                             endIndent: 25,indent:25),
                             Container(
                               margin:EdgeInsets.only(bottom:10),
                               child: InkWell(
                                 onTap:() => Navigator.pop(context),
                                 child: Text("Cancel",style:TextStyle(color:Colors.red,fontSize:16)),
                               )
                             )
                           ],
                         ),
                       );
                     },);
                    }, icon:Icon(Icons.more_vert,color:Colors.white60,size:19)),
              );
            },),
          )
        ],
      ),
    );
  }
}



