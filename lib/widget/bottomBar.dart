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
          label: "Explore",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Orders",
          icon: Icon(Icons.pending_actions),
        ),
        BottomNavigationBarItem(
          label: "Cart",
          icon: Icon(Icons.shopping_cart),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.person),
        ),
      ],
      onTap: (value) {
        // Respond to item press.
      },
    );
  }
}
