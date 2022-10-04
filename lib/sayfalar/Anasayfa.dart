import 'package:flutter/material.dart';
import 'package:flutter_commerce/sabitler/ext.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: HexColor("FBA346"),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.verified_user_rounded,color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Best Safety Standards amid Covid -19",style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /** APPBAR KISMI **/
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: HexColor("ffffff"),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi, Sanjeev",style: TextStyle(color: HexColor(yazi_renk),fontSize: 16,fontWeight: FontWeight.w500)),
          Text("Sarjapur, Bangalore",style: TextStyle(color: HexColor("FBA346"),fontSize: 14,fontWeight: FontWeight.w500)),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png')
          ),
        )
      ],
    );
  }
}
