import 'package:flutter/material.dart';
import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
      var demoIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: ExpandingBottomBar(
        navBarHeight: 70.0,
        items: [
          ExpandingBottomBarItem(
            icon: Icons.bookmark_border,
            text: "Home",
            selectedColor: Colors.blue,
          ),
          
          ExpandingBottomBarItem(
            icon: Icons.message,
            text: "Discussions",
            selectedColor: Colors.blue,
          ),
          ExpandingBottomBarItem(
            icon: Icons.person,
            text: "Profile",
            selectedColor: Colors.blue,
          ),
        ],
        selectedIndex: demoIndex,
        onIndexChanged: (demo) {
          setState(() {
            demoIndex = demo;
          });
        },
      ),
      body:SingleChildScrollView(
              child: SafeArea(
          child: Container(
            child:Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height:400,
                      width:double.infinity,
                      color:Colors.blue,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          left:40
                        ),
                        child: Text(
                          "Chat",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top:120
                      ),
                      height:520,
                      width:400,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight:Radius.circular(50)
                        ),
                        color:Colors.white,
                      ),
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, i){
                          return Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left:15, top:17),
                              height:60,
                              width:60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                  image:AssetImage('assets/1.jpg'),
                                  fit:BoxFit.cover
                                )
                              ),
                            ),
                            SizedBox(width:20),
                            Column(
                              children: <Widget>[
                                Text(
                                  "Opportune Katché",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height:13),
                                Text(
                                  "Can you help me ?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width:55),
                            Column(
                              children: <Widget>[
                                Text(
                                  "Yesterday",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    //color: Colors.grey
                                  ),
                                ),
                                SizedBox(height:13),
                                Container(
                                  height:30,
                                  width:30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:Colors.red
                                  ),
                                  child:Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "3+",
                                      style: TextStyle(
                                        color:Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                )
                              ],
                            )
                            ],
                          ) ;
                        },
                      )
                      ),
                    
                  ],
                )
              ],
            )
          ),
        ),
      )
    );
  }
}