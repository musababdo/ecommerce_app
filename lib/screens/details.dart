import 'package:ecommerce/screens/products.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  static String id = 'details';
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      backgroundColor: Colors.deepOrange,
      title: Text(
        'تفاصيل المنتج',
        style: TextStyle(
            color: Colors.white
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, Products.id);
          //Navigator.push(context, MaterialPageRoute(builder: (context) => home(),),);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Image.asset('assets/images/img1.jpg'),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "قوالب كيك",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 10
                          ),
                        ),
                      ),
                      Text(
                        "سخان طعام الصفا",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "المبيعات:1100",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "|",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "المشاهدات:1125",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "1500",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Text(
                          "هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحه",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          ": اللون",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: ClipOval(
                                child: Material(
                                  color: Colors.black,
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: ClipOval(
                                child: Material(
                                  color: Colors.blue,
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: ClipOval(
                                child: Material(
                                  color: Colors.deepOrange,
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12,left: 10),
                              child: ClipOval(
                                child: Material(
                                  color: Colors.green,
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Text(
                          "الحجم",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text("KG3",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text("KG3",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,right: 10),
                            child: Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text("KG3",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ClipOval(
                            child: Material(
                              color: Colors.grey,
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: SizedBox(
                                  child: Icon(Icons.remove,color: Colors.white,),
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text("2"),
                          const SizedBox(width: 10),
                          ClipOval(
                            child: Material(
                              color: Colors.deepOrange,
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: SizedBox(
                                  child: Icon(Icons.add,color: Colors.white,),
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * .08,
                            child: Builder(
                              builder: (context) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                  ),
                                ),
                                child: ElevatedButton.icon(
                                  icon: Icon(Icons.shopping_cart,size: 35,color: Colors.white,),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange,
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {

                                  },
                                  label: Padding(
                                    padding: const EdgeInsets.only(top: 15,bottom: 15,right: 35,left: 35),
                                    child: Text(
                                      'أضف للسله'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "الكميه المتوفره 973",
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 13
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.keyboard_arrow_up,color: Colors.deepOrange,),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                "نبذه عن المنتج",
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Divider(
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "من الضروري التعرف على الوضع الاقتصادي للزبائن في المنطقة التي سيقام بها المشروع",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.keyboard_arrow_up,color: Colors.deepOrange,),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                "التعليقات",
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Divider(
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
