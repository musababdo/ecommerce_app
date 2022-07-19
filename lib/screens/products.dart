import 'package:ecommerce/screens/details.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  static String id = 'products';
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  TextEditingController controller = new TextEditingController();

  onSearch(String text) async {
    //_search.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

//    _list.forEach((f) {
//      if (f.name.contains(text) || f.id.toString().contains(text))
//        _search.add(f);
//    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      backgroundColor: Colors.deepOrange,
      title: Text(
        'قدور ومقالي',
        style: TextStyle(
            color: Colors.white
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, Home.id);
          //Navigator.push(context, MaterialPageRoute(builder: (context) => home(),),);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: TextField(
                      controller: controller,
                      onChanged: onSearch,
                      decoration: InputDecoration(
                          hintText: "أبحث هنا", border: InputBorder.none),),
                    trailing: IconButton(
                      onPressed: () {
                        controller.clear();
                        onSearch('');
                      },
                      icon: Icon(Icons.cancel),
                    ),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
