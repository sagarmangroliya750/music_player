// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, camel_case_types, non_constant_identifier_names, must_be_immutable, prefer_final_fields

import 'package:flutter/material.dart';

class Playlists_pg extends StatelessWidget {
  List ply_list = ["New Playlist", "Recently Played", "Favourites"];
  List _icons = [
    Icon(Icons.add_circle_outline, color: Colors.green),
    Icon(Icons.watch_later_outlined, color: Colors.blue),
    Icon(Icons.favorite_border, color: Colors.red)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ply_list.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: _icons[index],
          title: Text(
            "${ply_list[index]}",
            style: TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
              splashColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios,
                  color: Colors.white60, size: 19)),
        );
      },
    );
  }
}
