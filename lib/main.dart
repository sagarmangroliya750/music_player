// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:music_player/Album_pg.dart';
import 'package:music_player/Artists_pg.dart';
import 'package:music_player/MusicPlayerList.dart';
import 'package:music_player/Playlists_pg.dart';
import 'package:music_player/bottom_bar.dart';

void main() {
  runApp(MaterialApp(home: demo(), debugShowCheckedModeBanner: false));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  static bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          persistentFooterButtons: [
            // Bottom Bar/////
            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return bottom_bar(isPlaying);
                },));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 65,
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xff3D3C3C),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25), bottom: Radius.circular(35))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.music_note, color: Colors.white70),
                    ),
                    Text(" Playing music mp3",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Container(
                        height: 50,
                        width: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous,
                                    color: Colors.redAccent)),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white)),
                              child: IconButton(
                                  onPressed: () {
                                 setState(() {
                                  if(isPlaying) {isPlaying = false;}
                                  else {isPlaying = true;}
                                 });
                                  },
                                  icon: isPlaying
                                      ? Icon(Icons.play_arrow_sharp, size: 22, color: Colors.red)
                                      : Icon(Icons.pause, size: 22, color: Colors.red)),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_next,
                                    color: Colors.redAccent)),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("MUSIC 🎸",
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: "font",
                    color: Colors.red,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                          color: Colors.redAccent,
                          blurRadius: 5,
                          offset: Offset(-1.5, 1))
                    ])),
            actions: [
              Icon(
                Icons.search_rounded,
                color: Colors.red,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
              SizedBox(width: 10)
            ],
          ),
          body: Column(
            children: [
              TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 16),
                indicator: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1.5, color: Colors.red))),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Songs"),
                  Tab(text: "Artists"),
                  Tab(text: "Albums"),
                  Tab(text: "Playlists"),
                ],
              ),
              Flexible(
                  child: TabBarView(children: [
                MusicPlayerList(),
                Artists_pg(),
                Album_pg(),
                Playlists_pg(),
              ]))
            ],
          ),
        ));
  }
}
