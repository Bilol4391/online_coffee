import 'package:flutter/material.dart';
import 'package:flutter_imtixon/buySide.dart';

import 'PageOne.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {


  List<String> listOfImage = [
    "assets/cofe1.png",
    "assets/cofe2.png",
    "assets/cofe3.png",
    "assets/cofe1.png",
    "assets/icecoffe1.jpeg",
    "assets/icecoffe2.jpeg",
    "assets/icecoffe3.jpeg",
    "assets/icecoffe4.jpeg",
    "assets/snack5.jpeg",
    "assets/snack2.jpeg",
    "assets/snack3.jpeg",
    "assets/snack4.jpeg",
    "assets/sweet1.jpeg",
    "assets/sweet2.jpeg",
    "assets/sweet3.jpeg",
    "assets/sweet4.jpeg",
  ];
  List listOfStarValue = [
    "4.5",
    "4.1",
    "4.6",
    "5.0",
    "4.5",
    "4.1",
    "4.6",
    "5.0",
    "4.3",
    "4.4",
    "4.2",
    "5.1",
    "4.5",
    "4.1",
    "4.6",
    "5.0",
  ];
  List listOfTitle = [
    "Cinnamon & Cocoa",
    "Drizzled with Caramel",
    "Bursting Blueberry",
    "Dalgona Whipped Macha",
    "Cinnamon & Cocoa",
    "Drizzled with Caramel",
    "Bursting Blueberry",
    "Dalgona Whipped Macha",
    "Cinnamon & Cocoa",
    "Drizzled with Caramel",
    "Bursting Blueberry",
    "Dalgona Whipped Macha",
    "Cinnamon & Cocoa",
    "Drizzled with Caramel",
    "Bursting Blueberry",
    "Dalgona Whipped Macha",
  ];
  List listOfPrice = [
    "₹99",
    "₹199",
    "₹249",
    "₹299",
    "₹19",
    "₹45",
    "₹29",
    "₹13",
    "₹12.5",
    "₹49",
    "₹45",
    "₹219",
    "₹29",
    "₹13",
    "₹12.5",
    "₹49",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff201520),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Image.asset("assets/Brand Logo.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 220),
                child: Image.asset("assets/Profile Picture.png"),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 57,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              style: TextStyle(
                  color: Color(0xffEFE3C8).withOpacity(.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Rosarivo"),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff171017),
                  hintText: "Browse your favourite coffee...",
                  hintStyle: TextStyle(
                    fontFamily: "Rosarivo",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xffEFE3C8).withOpacity(.5),
                  ),
                  prefixIcon: Container(
                      margin: EdgeInsets.only(left: 12, right: 10),
                      child: Icon(
                        Icons.search_rounded,
                        color: Color(0xffEFE3C8).withOpacity(.5),
                        size: 30,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 578,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    crossAxisSpacing: 0,
                    childAspectRatio: 4 / 6,
                    mainAxisSpacing: 0),
                itemCount: listOfImage.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: 180,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xff292129),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PageOne(image: listOfImage[index], title: listOfTitle[index], star: listOfStarValue[index], price: listOfPrice[index],)));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage(listOfImage[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: 250,
                            height: 150,
                            margin:
                                EdgeInsets.only(top: 15, left: 25, right: 25),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 22,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Rectangle 177.png"),
                                          fit: BoxFit.contain)),
                                  margin: EdgeInsets.only(left: 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            "assets/Vector 11.16.09.png"),
                                        margin: EdgeInsets.only(left: 8),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 2, bottom: 5),
                                          child: Text(
                                            listOfStarValue[index],
                                            style: TextStyle(
                                                fontFamily: "Rosarivo",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Colors.white),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 131,
                          height: 45,
                          child: Text(
                            listOfTitle[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Rosarivo",
                                color: Colors.white,
                                letterSpacing: .8,
                                height: 1.6),
                          ),
                          margin: EdgeInsets.only(left: 22, top: 5),
                        ),
                        Container(
                          width: 147,
                          height: 50,
                          margin: EdgeInsets.only(left: 15, top: 12),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.white.withOpacity(0.08)),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  listOfPrice[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: 'Open Sans',
                                      color: Colors.white,
                                      letterSpacing: .8),
                                ),
                                margin: EdgeInsets.only(left: 20),
                                width: 40,
                                height: 20,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BuySide(image: listOfImage[index], title: listOfTitle[index], price: listOfPrice[index], star: listOfStarValue[index],)));
                                }
                                ,child: Container(
                                  width: 48,
                                  height: 48,
                                  margin: EdgeInsets.only(left: 39),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      color: Color(0xffEFE3C8)),
                                  child: Center(
                                    child: Icon(Icons.shopping_cart),
                                  )),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
