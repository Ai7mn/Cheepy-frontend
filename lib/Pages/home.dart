import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//Local Files imports
import 'package:First_App/Components/horizontal_listview.dart';
import 'package:First_App/Components/products.dart';
import 'package:First_App/Pages/cart.dart';



class HomePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('Images/pic1.jpg'),
          AssetImage('Images/pic2.jpg'),
          AssetImage('Images/pic3.jpg'),
          AssetImage('Images/pic4.jpg'),
        ],
        //images list
        autoplay: false,
        dotSize: 5.0,
        dotColor: Colors.amber,
        dotIncreasedColor: Colors.amber,
        dotBgColor: Colors.black54,
        indicatorBgPadding: 10.0,
        //animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(microseconds: 1000),
      ),
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        elevation: 1.0,
        title: Text(
          "Cheepy",
          style: TextStyle(
            color: Colors.amber,
            fontFamily: 'DancingScript-Regular',
            fontSize: 30.0,
          ),
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.menu,
              color: Colors.amber,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.amber,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.amber,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Aiman Ahmed'),
              accountEmail: Text('Aiman@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('Images/myprofile.jpg'),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.black54,
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.amber),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.amber),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.amber),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.amber),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.amber),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.error_outline, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //The image slider.
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Categories ',
              style: TextStyle(
                fontFamily: 'DancingScript-Regular',
                fontSize: 20.0,
                color: Colors.black54,
              ),
            ),
          ),

          // Below is Horizentel List of Categories.
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Recent Products ',
              style: TextStyle(
                fontFamily: 'DancingScript-Regular',
                fontSize: 20.0,
                color: Colors.black54,
              ),
            ),
          ),

          // Below is  Grid View .

          Flexible(child: Products()),

        ],
      ),
    );
  }
}


