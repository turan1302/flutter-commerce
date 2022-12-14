import 'package:flutter/material.dart';
import 'package:flutter_commerce/sabitler/ext.dart';
import 'package:flutter_commerce/sayfalar/Anasayfa.dart';
import 'package:flutter_commerce/sayfalar/cart/Cart.dart';
import 'package:flutter_commerce/sayfalar/kullanici/Profil.dart';
import 'package:flutter_commerce/sayfalar/order/Order.dart';
import 'package:get/get.dart';

import '../controller/generalController.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  GeneralController generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      currentIndex: generalController.menu.value,
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
      onTap: (i) {
        generalController.menu.value = i;
        if(i==0){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));
        }
        else if(i==1){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()));
        }
        else if(i==2){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
        }
        else{
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profil()));
        }
      },
    ));
  }
}
