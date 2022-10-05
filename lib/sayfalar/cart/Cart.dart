import 'package:flutter/material.dart';
import 'package:flutter_commerce/widget/bottomBar.dart';

import '../../sabitler/ext.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomBar(),
        appBar: buildAppBar(context),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/cart/cart.png'),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text("No Items in the Cart",style: TextStyle(color: HexColor(yazi_renk),fontSize: 24,fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15,left: 74,right: 74),
                child: Text("Your cart is empty. Add some items to see it here",style: TextStyle(color: HexColor(yazi_renk),fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
              ),
              Padding(
                padding: EdgeInsets.only(top: 41),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("FBA346"),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: HexColor("bfbfbf"),
                          blurRadius: 10,
                          offset: Offset(0,5)
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 72),
                      child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /** APPBAR KISMI **/
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: GestureDetector(
          // LEADING KISMINI BU SEKILDE OZELLESTIRDIK
          child: Icon(Icons.arrow_back_ios, color: HexColor(yazi_renk)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: HexColor(appbar_renk),
        elevation: 0,
        centerTitle: true,
        title: Text("Cart", style: TextStyle(color: HexColor(yazi_renk))),
      );
  }
}
