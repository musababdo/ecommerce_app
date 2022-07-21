import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/details.dart';
import 'package:ecommerce/screens/products.dart';
import 'package:ecommerce/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final appbar=AppBar(backgroundColor: Colors.deepOrange,);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 45),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "العنوان",
                                style: TextStyle(
                                    fontSize: 16,
                                    color:Colors.white,
                                ),

                              ),
                              Text(
                                "الرياض,السعوديه",
                                style: TextStyle(
                                    fontSize: 20,
                                    color:Colors.white,
                                    fontWeight: FontWeight.bold
                                ),

                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                color: Colors.black12,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Icon(Icons.location_on,color: Colors.white,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  buildSearchBar(),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: 150.0,
              child: ClipRRect(
                borderRadius: new BorderRadius.only(
                  bottomLeft: const Radius.circular(18),
                  bottomRight: const Radius.circular(18),
                  topLeft: const Radius.circular(18),
                  topRight: const Radius.circular(18),
                ),
                child: Carousel(
                  dotIncreaseSize: 0.8,
                  dotSize: 8,
                  dotColor: Color(0xFFE4E5E5),
                  dotBgColor: Colors.transparent,
                  borderRadius: true,
                  boxFit: BoxFit.cover,
                  images: List.generate(
                    slideShowList.length,
                        (index) => Image.asset(slideShowList[index],
                      fit: BoxFit.cover,),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 12,left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "اتمام الشراء",
                            style: TextStyle(
                                fontSize: 12,
                                color:Colors.black,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                          Text(
                            "اتمام الشراء ودفع أمن",
                            style: TextStyle(
                              fontSize: 8,
                              color:Colors.black54,
                            ),

                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Icon(Icons.home,color: Colors.deepOrange,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "الشحن السريع",
                            style: TextStyle(
                                fontSize: 12,
                                color:Colors.black,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                          Text(
                            "خلال 1 ل 3أيام",
                            style: TextStyle(
                              fontSize: 8,
                              color:Colors.black54,
                            ),

                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Icon(Icons.ac_unit,color: Colors.deepOrange,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "ارجاع السلع مجانا",
                            style: TextStyle(
                                fontSize: 12,
                                color:Colors.black,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                          Text(
                            "بسهوله خلال 3أيام",
                            style: TextStyle(
                              fontSize: 8,
                              color:Colors.black54,
                            ),

                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Icon(Icons.location_on,color: Colors.deepOrange,),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.deepOrange,size: 10,),
                      Text(
                        "اظهار المزيد",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black26
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "الفئات",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: (){
                Navigator.popAndPushNamed(context, Products.id);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: collectionList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomButton(
                        icon: collectionList[index].imgUrl,
                        name: collectionList[index].name,
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.deepOrange,size: 10,),
                      Text(
                        "اظهار المزيد",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "أفضل العروض والخصومات",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.popAndPushNamed(context, Details.id);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: (MediaQuery.of(context).size.height - appbar.preferredSize.height) * .5,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12,left: 10),
                                  child: Icon(Icons.favorite_border)
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12,right: 10),
                                  child: Container(
                                    width: 40,
                                    height: 20,
                                    color: Colors.green,
                                    child: Center(
                                      child: Text("جديد",
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                              child: Image.asset('assets/images/img1.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 5),
                              child: Text(
                                "قوالب كيك",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "سخان طعام الصفا",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(top: 12,left: 10),
                                    child: ClipOval(
                                      child: Material(
                                        color: Colors.deepOrange,
                                        child: SizedBox(
                                          child: Icon(Icons.add,color: Colors.white,),
                                          height: 32,
                                          width: 32,
                                        ),
                                      ),
                                    ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12,right: 10),
                                  child: Text(
                                    "1500",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: (MediaQuery.of(context).size.height - appbar.preferredSize.height) * .5,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 12,left: 10),
                                  child: Icon(Icons.favorite_border)
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12,right: 10),
                                child: Container(
                                  width: 40,
                                  height: 20,
                                  color: Colors.deepOrange,
                                  child: Center(
                                    child: Text("%15",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                            child: Image.asset('assets/images/img1.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 5),
                            child: Text(
                              "قوالب كيك",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "سخان طعام الصفا",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12,left: 10),
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.deepOrange,
                                    child: SizedBox(
                                      child: Icon(Icons.add,color: Colors.white,),
                                      height: 32,
                                      width: 32,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12,right: 10),
                                child: Text(
                                  "1500",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.4,
              child: Image.asset("assets/images/img1.jpg"),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.deepOrange,size: 10,),
                      Text(
                        "اظهار المزيد",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "الأكثر مبيعا",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: (MediaQuery.of(context).size.height - appbar.preferredSize.height) * .5,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: Icon(Icons.favorite_border)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 40,
                              height: 20,
                              color: Colors.green,
                              child: Center(
                                child: Text("جديد",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Image.asset('assets/images/img1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,top: 5),
                        child: Text(
                          "قوالب كيك",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "سخان طعام الصفا",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 10),
                            child: ClipOval(
                              child: Material(
                                color: Colors.deepOrange,
                                child: SizedBox(
                                  child: Icon(Icons.add,color: Colors.white,),
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Text(
                              "1500",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: (MediaQuery.of(context).size.height - appbar.preferredSize.height) * .5,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: Icon(Icons.favorite_border)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 40,
                              height: 20,
                              color: Colors.deepOrange,
                              child: Center(
                                child: Text("%15",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Image.asset('assets/images/img1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,top: 5),
                        child: Text(
                          "قوالب كيك",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "سخان طعام الصفا",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 10),
                            child: ClipOval(
                              child: Material(
                                color: Colors.deepOrange,
                                child: SizedBox(
                                  child: Icon(Icons.add,color: Colors.white,),
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Text(
                              "1500",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.4,
              child: Image.asset("assets/images/img2.jpg"),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.deepOrange,size: 10,),
                      Text(
                        "اظهار المزيد",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black26
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap:(){
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => catigory(),),);
                      //Navigator.popAndPushNamed(context, catigory.id);
                    },
                    child: Text(
                      "أخترنا لك",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: (MediaQuery.of(context).size.height - appbar.preferredSize.height) * .5,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: Icon(Icons.favorite_border)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 40,
                              height: 20,
                              color: Colors.green,
                              child: Center(
                                child: Text("جديد",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Image.asset('assets/images/img1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,top: 5),
                        child: Text(
                          "قوالب كيك",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "سخان طعام الصفا",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 10),
                            child: ClipOval(
                              child: Material(
                                color: Colors.deepOrange,
                                child: SizedBox(
                                  child: Icon(Icons.add,color: Colors.white,),
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Text(
                              "1500",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: (MediaQuery.of(context).size.height - appbar.preferredSize.height) * .5,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: Icon(Icons.favorite_border)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 40,
                              height: 20,
                              color: Colors.deepOrange,
                              child: Center(
                                child: Text("%15",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Image.asset('assets/images/img1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,top: 5),
                        child: Text(
                          "قوالب كيك",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "سخان طعام الصفا",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 10),
                            child: ClipOval(
                              child: Material(
                                color: Colors.deepOrange,
                                child: SizedBox(
                                  child: Icon(Icons.add,color: Colors.white,),
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Text(
                              "1500",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
buildSearchBar() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
    child: TextFormField(
      controller: new TextEditingController(),
      textAlign: TextAlign.right,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF98A0A6),
            size: 20,
          ),
          hintText: "أبحث عن منتج",
          hintStyle: TextStyle(
                color:Color(0xFF98A0A6),
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          contentPadding: const EdgeInsets.only(top: 10,right: 10),
          border: InputBorder.none,
          enabledBorder: InputBorder.none),
    ),
  );
}
