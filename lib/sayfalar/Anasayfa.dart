import 'package:flutter/material.dart';
import 'package:flutter_commerce/sabitler/ext.dart';
import 'package:flutter_commerce/servisler/anasayfa.dart';

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
                buildSeritBanner(context),
                /** ANASAYFA ARAMA KISMI **/
                buildUstAramaForm(),
                /** ANASYAFA SLIDER KISMI **/
                buildSlider(),
                /** CATEGORIES KISMI **/
                buildCategories(),
                /** ANASAYFA FEATURED PRODUCTS KISMI **/
                buildFeaturedProducts()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildFeaturedProducts() {
    return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Products",
                          style: TextStyle(
                              color: HexColor("535353"),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: HexColor("FBA346"),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Container(
                        height: 168,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: homeFeatured.length,
                          itemBuilder: (context,index){
                            return Padding(
                                padding: const EdgeInsets.only(right: 22),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: HexColor("bdbdbd"),
                                                blurRadius: 10,
                                                offset: Offset(0, 4))
                                          ]),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(homeFeatured[index]['image']),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15,left: 15),
                                            child: Column(
                                              children: [
                                                Text(homeFeatured[index]['name']),
                                                SizedBox(
                                                  height: 6,
                                                ),
                                                Text(homeFeatured[index]['price'].toString()+" ₺"),
                                                SizedBox(
                                                  height: 13,
                                                ),
                                              ],
                                            )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        ),
                      ))
                ],
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
          Text("Hi, Sanjeev",
              style: TextStyle(
                  color: HexColor(yazi_renk),
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          Text("Sarjapur, Bangalore",
              style: TextStyle(
                  color: HexColor("FBA346"),
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(backgroundImage: AssetImage('assets/avatar.png')),
        )
      ],
    );
  }

  /** SERIT BANNER KISMI **/
  Container buildSeritBanner(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: HexColor("FBA346"),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.verified_user_rounded, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Text("Best Safety Standards amid Covid -19",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  /** UST ARAMA FORM **/
  Padding buildUstAramaForm() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: HexColor("bdbdbd"),
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ]),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: HexColor("bdbdbd"),
                          blurRadius: 10,
                          offset: Offset(0, 4))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
                  child: Icon(Icons.tune),
                )),
          ],
        ),
      ),
    );
  }

  /** ANASAYFA SLIDER KISMI **/
  Padding buildSlider() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
      child: Container(
        height: 152,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: AspectRatio(
                aspectRatio: 4 / 2.25,
                child: Container(
                  height: 152,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 21, left: 16),
                        child: Text("January Offer",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 17, left: 16),
                        child: Text("Get cashback up to 30% for all transaction",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: HexColor("FBA346"),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: AspectRatio(
                aspectRatio: 4 / 2.25,
                child: Container(
                  height: 152,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 21, left: 16),
                        child: Text("Safety Standards",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 17, left: 16),
                        child: Text("Keeping you and our partners safe amid Covid -19",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: HexColor("FBA346"),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /** ANASAYFA KATEGORİLER KISMI **/
  Column buildCategories() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories",
                  style: TextStyle(
                      color: HexColor("535353"),
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Text("View All",
                  style: TextStyle(
                      color: HexColor("FBA346"),
                      fontSize: 18,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            height: 102,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeCategories.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: HexColor("bdbdbd"),
                                    blurRadius: 10,
                                    offset: Offset(0, 4))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(homeCategories[index]['image']),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(homeCategories[index]['name'])
                      ],
                    ));
              },
            ),
          ),
        )
      ],
    );
  }
}
