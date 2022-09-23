import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_demo/Gridview.dart';
import 'package:shopping_demo/carousel.dart';
import 'package:shopping_demo/categories.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0x232F3D),
        appBar: AppBar(
          title: Image.network(
            "https://pngimg.com/uploads/amazon/amazon_PNG11.png",
            scale: 13,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "What are you looking for?",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                ),
                const Text("     Deliver to Delhi",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white)),
              ]),
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              height: 130,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Categories(),
              ),
            ),
            Positioned(child: Caurosel()),
            SizedBox(
              height: 15,
            ),
            Positioned(
              left: 0,
              child: Text(
                "Deal of the Day",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 5,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 20,
              child: Image.network(
                "https://www.transparentpng.com/thumb/laptop/9oRuDc-refreshed-pavilion-gaming-series-launching-next-month.png",
                height: 300,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Hp Pavillion M07GFTY(AMD RYZEN 5/8 GB RAM/512 GB SSD/Radeon Graphics Ultra Thin",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 0),
                  child: Text(
                    "50,000 Rs,",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "MRP 89,000 Rs",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "35% off",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                child: Center(
                  child: Text(
                    "Top Deals",
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 5, color: Colors.blue),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.cyan,
              height: 900,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: GridVieww(),
              ),
            )
          ]),
        ));
  }
}
