import 'package:flutter/material.dart';
import 'package:flutter_commerce/servisler/siparisler.dart';
import 'package:flutter_commerce/widget/bottomBar.dart';

import '../../sabitler/ext.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomBar(),
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /** PAST REORDERS YAZISI KISMI **/
                  buildPastReorders(),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height/1.37,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          return buildOrders(day: orders[index]['day'],month: orders[index]['month'],title: orders[index]['title'],items: orders[index]['items']);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
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

  /** PAST REORDERS YAZISI KISMI **/
  Padding buildPastReorders() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text("Past Orders",
          style: TextStyle(
              color: HexColor(yazi_renk),
              fontSize: 18,
              fontWeight: FontWeight.bold)),
    );
  }

  /** ORDERS KISMI **/
  Padding buildOrders({
    String? day,
    String? month,
    String? items,
    String? title
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(day.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 23)),
                SizedBox(
                  height: 5,
                ),
                Text(month.toString(),
                    style: TextStyle(
                        color: HexColor(yazi_renk),
                        fontWeight: FontWeight.w400,
                        fontSize: 14)),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 280,
            decoration: BoxDecoration(
                color: HexColor("#FFAB86"),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.only(top: 22, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(title.toString(),
                      style: TextStyle(
                          color: HexColor("a44200"),
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  Padding(
                      padding: EdgeInsets.only(top: 17, left: 82, right: 63),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor("A44200")),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 16),
                          child: Text("Reorder",
                              style: TextStyle(
                                  color: HexColor("a44200"),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
