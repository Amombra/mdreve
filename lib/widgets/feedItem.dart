import 'package:flutter/material.dart';
import 'package:mdreve/widgets/detailHouse.dart';

class FeedItem extends StatelessWidget {
  final id;
  final address;
  final local;
  final image;
  final price;

  const FeedItem(this.id, this.address, this.local, this.image, this.price);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        elevation: 5,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailHouse()));
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('assets/${image}'), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      alignment: Alignment.topLeft,
                      child: Text('${price.toString()} FcFA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  alignment: Alignment.topLeft,
                  child: Text(address, style: TextStyle(color: Colors.grey)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    local,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
