import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import '../widgets/feedItem.dart';
import '../widgets/house.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<House> items = [
    House(
      id: 1,
      address: '335 bp Abj 11',
      local: 'Cocody Angré Djiby...',
      image: 'villa.jpg',
      price: 1500000,
    ),
    House(
      id: 2,
      address: '335 bp Abj 11',
      local: 'Cocody Angré Djiby...',
      image: 'belle.jpg',
      price: 1500000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        title: Text(
          "Logis",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                showModalSheet();
              },
              icon: Icon(Icons.swap_vert),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "New Today (${items.length})",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, i) {
                  return FeedItem(
                    items[i].id,
                    items[i].address,
                    items[i].local,
                    items[i].image,
                    items[i].price,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showModalSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(OMIcons.close),
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      showModalSheet2();
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      width: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(OMIcons.search),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Rechercher une maison"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  void showModalSheet2() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(OMIcons.close),
                    ),
                    Text(
                      "My Location",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    width: MediaQuery.of(context).size.height / 2,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        filled: true,
                        hintText: "Ma localisation",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
