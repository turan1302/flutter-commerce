import 'package:flutter/material.dart';
import 'package:flutter_commerce/sabitler/ext.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: HexColor("FBA346"),
      unselectedItemColor: HexColor("8E8E93"),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      items: [
        BottomNavigationBarItem(
          label: "Favorites",
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: "Music",
          icon: Icon(Icons.music_note),
        ),
        BottomNavigationBarItem(
          label: "Places",
          icon: Icon(Icons.location_on),
        ),
        BottomNavigationBarItem(
          label: "News",
          icon: Icon(Icons.library_books),
        ),
      ],
      onTap: (value) {
        // Respond to item press.
      },
    );
  }
}
