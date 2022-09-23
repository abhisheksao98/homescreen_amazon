import 'package:flutter/material.dart';

import 'package:shopping_demo/productsmodel.dart';

class GridVieww extends StatefulWidget {
  const GridVieww({Key? key}) : super(key: key);

  @override
  State<GridVieww> createState() => _GridViewState();
}

class _GridViewState extends State<GridVieww> {
  final allproducts = allproduct().getproducts();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 30),
        itemCount: allproducts.length,
        itemBuilder: (context, index) {
          final item = allproducts[index];
          return Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: GridTile(
                header: Container(
                  child: Center(
                    child: Text(
                      allproducts[index].title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.network(
                    allproducts[index].images,
                    width: double.infinity,
                    height: 50,
                  ),
                ),
                footer: Center(
                  child: Text(
                    allproducts[index].price,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ));
        });
  }
}
