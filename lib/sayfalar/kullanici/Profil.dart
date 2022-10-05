import 'package:flutter/material.dart';
import 'package:flutter_commerce/sabitler/ext.dart';
import 'package:flutter_commerce/widget/bottomBar.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomBar(),
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              children: [
                buildProfileName(),
                Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      children: [
                        buildProfileMenu(icon: Icons.person,text: "Edit Profile",onTap: (){}),
                        Divider(height: 2),
                        buildProfileMenu(icon: Icons.pin_drop_outlined,text: "Shipping Address",onTap: (){}),
                        Divider(height: 2),
                        buildProfileMenu(icon: Icons.access_time_filled,text: "Order History",onTap: (){}),
                        Divider(height: 2),
                        buildProfileMenu(icon: Icons.notifications,text: "Notification",onTap: (){}),
                        Divider(height: 2),
                        buildProfileMenu(icon: Icons.credit_card,text: "Cards",onTap: (){}),
                        Divider(height: 2),
                        buildProfileMenu(icon: Icons.logout,text: "Logout",onTap: (){}),
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
        title: Text("Profile", style: TextStyle(color: HexColor(yazi_renk))),
      );
  }

  /** PROFIL FOTOGRAFI VE NAME KISMI **/
  Row buildProfileName() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/avatar.png'),
        ),
        SizedBox(
          width: 9,
        ),
        Text("Sanjeev Gupta",
            style: TextStyle(
                color: HexColor(yazi_renk),
                fontSize: 18,
                fontWeight: FontWeight.w500))
      ],
    );
  }

  /** PROFILE MENU KISMI AYARLANMASI **/
  ListTile buildProfileMenu({
    String? text,
    IconData? icon,
    GestureTapCallback? onTap
  }) {
    return ListTile(
      leading: Icon(icon!),
      title: Text(text!),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
