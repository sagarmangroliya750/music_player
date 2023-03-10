// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:music_player/play_pause.dart';

class bottom_bar extends StatefulWidget {

  @override
  State<bottom_bar> createState() => _bottom_barState();
}
class _bottom_barState extends State<bottom_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3D3C3C),
        elevation: 0.0,
        title:Text("Player",style:TextStyle(fontSize:33,fontFamily:"font",color:Colors.red.shade400)),
        centerTitle:true,
      ),
      backgroundColor:  Color(0xff3D3C3C),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.all(53),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25)),
                  child:
                      Icon(Icons.music_note, size: 170, color: Colors.grey)),
              Column(
                children: [
                  SizedBox(height: 27),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SliderTheme(
                        data: SliderThemeData(
                            trackHeight: 1,
                            thumbColor: Color(0xffEE2D2D),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 6),
                            activeTrackColor: Color(0xffEE2D2D),
                            inactiveTrackColor: Colors.black87),
                        child: Slider.adaptive(
                          value: 35,
                          onChanged: (value) {},
                          min: 0,
                          max: 100,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("00:00",
                            style:
                                TextStyle(color: Colors.red, fontSize: 12)),
                        Text("04:08",
                            style: TextStyle(
                                color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
              Container(
                height: 40,
                width: 270,
                child: Text("Song Name track one Mp3",
                    style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
              Text("Unknown artists",
                  style: TextStyle(color: Colors.white60, fontSize: 13)),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.skip_previous),
                      iconSize: 40,
                      color: Color(0xffEE2D2D),
                    ),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: FloatingActionButton(
                            backgroundColor: Color(0xffEE2D2D),
                            onPressed: () {
                              if(aud_butt.isPlaying)
                                {
                                  aud_butt.isPlaying = false;
                                }
                              else
                                {
                                  aud_butt.isPlaying = true;
                                }
                              setState(() {
                              });
                            },
                            child:  aud_butt.isPlaying
                                ? Icon(Icons.play_arrow, size: 40,)
                                : Icon(Icons.pause, size: 40,))),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_next,
                          color: Color(0xffEE2D2D),
                          size: 40,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back,
                            color: Colors.white, size: 22)),
                    IconButton(
                        onPressed: () {
                          if(aud_butt.isLike)
                            {
                              aud_butt.isLike = false;
                             final snackbar =  SnackBar(content: Text("Add to Favourite.."),
                               padding:EdgeInsets.only(bottom:20,left:20,right:10),
                               action:SnackBarAction(label: "Close", onPressed: () {
                                SnackBarClosedReason.dismiss;
                              },),);
                              ScaffoldMessenger.of(context).showSnackBar(snackbar);
                            }
                          else
                            {
                              aud_butt.isLike = true;
                              final snackbar = SnackBar(content: Text("Remove from Favourite.."),
                                padding:EdgeInsets.only(bottom:20,left:20,right:10),
                                action:SnackBarAction(label: "Close", onPressed: () {
                                  SnackBarClosedReason.dismiss;
                              },),);
                              ScaffoldMessenger.of(context).showSnackBar(snackbar);
                            }
                          setState(() {
                          });
                        },
                        icon:  aud_butt.isLike
                            ? Icon(Icons.favorite_border,color:Colors.white,)
                            : Icon(Icons.favorite,color:Colors.red,)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shuffle_outlined,
                            color: Colors.white, size: 22)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz,
                            color: Colors.white, size: 22))
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
