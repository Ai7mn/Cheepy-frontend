import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:First_App/Pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list = [
    {
      "name": "Shirt",
      "picture": "Images/shirt1.jpeg",
      "old_price": 180,
      "price": 130,
    },
    {
      "name": "Pants",
      "picture": "Images/pant1.jpg",
      "old_price": 100,
      "price": 90,
    },
    {
      "name": "Gloves",
      "picture": "Images/gloves.jpeg",
      "old_price": 50,
      "price": 30,
    },
    {
      "name": "Black Shirt",
      "picture": "Images/shirt3.jpg",
      "old_price": 140,
      "price": 120,
    },
    {
      "name": "Jacket",
      "picture": "Images/jacket.jpg",
      "old_price": 200,
      "price": 150,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
            prod_name: products_list[index]["name"],
            prod_picture: products_list[index]["picture"],
            prod_old_price: products_list[index]["old_price"],
            prod_price: products_list[index]["price"],
          ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_picture: prod_picture,
                        product_detail_old_price: prod_old_price,
                        product_detail_price: prod_price,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    title: Text(
                      "\$ $prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$ $prod_old_price",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
              ),
                child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
