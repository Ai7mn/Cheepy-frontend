import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_in_the_cart = [
  {
  "name": "Shirt",
  "picture": "Images/shirt1.jpeg",
  "price": 130,
  "size":"M",
  "color":"white",
  "qty": 3
},
{
"name": "Pants",
"picture": "Images/pant1.jpg",
"price": 90,
"size":"L",
"color":"Black",
"qty": 2
},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: products_in_the_cart.length,
        itemBuilder: (context, index) {
      return Single_cart_product(
        cart_prod_name : products_in_the_cart[index]["name"],
        cart_prod_picture : products_in_the_cart[index]["picture"],
        cart_prod_price : products_in_the_cart[index]["price"],
        cart_prod_size : products_in_the_cart[index]["size"],
        cart_prod_color : products_in_the_cart[index]["color"],
        cart_prod_qty : products_in_the_cart[index]["qty"],

      );
    });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
