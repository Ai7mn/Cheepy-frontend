import 'package:flutter/material.dart';

//my imports
import 'package:First_App/Pages/home.dart';
import 'package:First_App/Components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        elevation: 1.0,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          } ,
          child: Text(
            "Cart",
            style: TextStyle(
              color: Colors.amber,
              fontFamily: 'DancingScript-Regular',
              fontSize: 30.0,
            ),
          ),
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Colors.amber,
            ),
            onPressed: () => Navigator.pop(context)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.amber,
              ),
              onPressed: () {}),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: Text("Total :"),
              subtitle: Text("\$230"),
            )),
            
            Expanded(child: MaterialButton(onPressed: (){},
            child:  Text("Check out" , style:TextStyle(color: Colors.amber),),
              color: Colors.black54,
            )),
          ],
        ),
      ),
    );
  }
}
