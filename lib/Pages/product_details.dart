
import 'package:flutter/material.dart';
import 'package:First_App/Pages/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_old_price,
    this.product_detail_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
          "Cheepy",
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
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // The First 3 Buttons.
          Row(
            children: <Widget>[
              // *** Size Button ***
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              // *** Color Button ***
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              // *** Qty Button ***
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // The Second Buttons.
          Row(
            children: <Widget>[
              // *** Size Button ***
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.black54,
                  textColor: Colors.amber,
                  height: 50,
                  child: Text("Buy Now"),
                ),
              ),

              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.amber,
                  ),
                  onPressed: () {}),

              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.amber,
                  ),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
