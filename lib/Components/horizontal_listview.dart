import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "Images/shirticon.png",
            image_caption: "Shirt",
          ),
          Category(
            image_location: "Images/dressicon.png",
            image_caption: "Dresses",
          ),
          Category(
            image_location: "Images/pantsicon.png",
            image_caption: "Pants",
          ),
          Category(
            image_location: "Images/jacketicon.png",
            image_caption: "Jacket",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 100.0,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Text(
              image_caption,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
