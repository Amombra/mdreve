import 'package:flutter/material.dart';

class Ajout extends StatefulWidget {
  @override
  _AjoutState createState() => _AjoutState();
}

class _AjoutState extends State<Ajout> {
  Widget ajouter(){
    return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left:130, top:30),
                      height:90,
                      width:90,
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color:Colors.white54
                      ),
                      child: Icon(Icons.home, color:Color.fromRGBO(255, 88, 100, 0.5), size:50),
                    ),
                  ],
                ),
                SizedBox(height:25),

                 Row(
                   children: <Widget>[
                     Container(
                      margin:EdgeInsets.only(
                        left:90
                      ),
                      child:Text(
                        "Ajouter une maison",
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        )
                      )
                ),
                   ],
                 ),
                 SizedBox(height:30),
                 Container(
                   height:55,
                   width:300,
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                             style: TextStyle(
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.home, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Type de maison",
                            
                            hintStyle: TextStyle(
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),
                 SizedBox(height:25),

                  Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Row(
                      children: <Widget>[
                        Container(
                         height:55,
                         width:240,
                         //margin: EdgeInsets.only(left:30, right:30),
                         decoration: BoxDecoration(
                           color:Colors.white,
                           borderRadius:BorderRadius.circular(100)
                         ),
                         child:  Container(
                           margin: EdgeInsets.only(left:30, right:30),
                           child: TextField(
                                   style: TextStyle(
                                     color:Colors.pink
                                   ),
                                   decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.confirmation_number, color: Color.fromRGBO(255, 88, 100, 1), ),

                                  hintText: "Nombre de pièces",
                                 
                                  hintStyle: TextStyle(
                                    
                                    fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 17,
                                      )
                            ),
                        ),
                         ),
                 ),
                 SizedBox(width:10),
                 Container(
                     height:50,
                     width:50,
                     decoration: BoxDecoration(
                       shape:BoxShape.circle,
                       color: Colors.white
                     ),
                     child:Icon(Icons.home,  color: Color.fromRGBO(255, 88, 100, 0.5))
                 )
                      ],
                    ),
                  ),
                 SizedBox(height:25),

                  Container(
                   height:55,
                   width:300,
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                             style: TextStyle(
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.attach_money, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Prix",
                            
                            hintStyle: TextStyle(
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),
                SizedBox(height:25),
                 Container(
                   height:55,
                   width:300,
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                             style: TextStyle(
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.map, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Localisation",
                           
                            hintStyle: TextStyle(
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),

                  SizedBox(height:25),
                 Container(
                   //height:55,
                   width:300,
                   constraints: BoxConstraints(
                     minHeight: 55
                   ),
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                          keyboardType: TextInputType.multiline,
                              maxLines: null,
                             style: TextStyle(
                                
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.home, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Description",
                            
                            hintStyle: TextStyle(
                             
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),
                 SizedBox(height:20),
                Row(
                  children: <Widget>[
                     Container(
                       margin:EdgeInsets.only(left:40) ,
                   height:55,
                   width:120,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100),
                     color:Colors.white
                   ),
                   child: Container(
                     alignment: Alignment.center,
                     child:Text(
                       "Valider",
                       style: TextStyle(
                         color:Color.fromRGBO(255, 88, 100, 1),
                         fontSize: 20,
                         fontWeight: FontWeight.w300
                       ),
                     )
                   ),
                 )
                  ],
                ),
              
              ],
            );
  }

  Widget ajouts(){
    return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left:130, top:10),
                      height:90,
                      width:90,
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color:Colors.white54
                      ),
                      child: Icon(Icons.home, color:Color.fromRGBO(255, 88, 100, 0.5), size:50),
                    ),
                  ],
                ),
                SizedBox(height:25),

                 Row(
                   children: <Widget>[
                     Container(
                      margin:EdgeInsets.only(
                        left:90
                      ),
                      child:Text(
                        "Ajouter une maison",
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        )
                      )
                ),
                   ],
                 ),
                 SizedBox(height:30),
                 Container(
                   height:55,
                   width:300,
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                             style: TextStyle(
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.category, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Type de maison",
                            
                            hintStyle: TextStyle(
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),
                 SizedBox(height:25),

                  Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Row(
                      children: <Widget>[
                        Container(
                         height:55,
                         width:240,
                         //margin: EdgeInsets.only(left:30, right:30),
                         decoration: BoxDecoration(
                           color:Colors.white,
                           borderRadius:BorderRadius.circular(100)
                         ),
                         child:  Container(
                           margin: EdgeInsets.only(left:30, right:30),
                           child: TextField(
                                   style: TextStyle(
                                     color:Colors.pink
                                   ),
                                   decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.confirmation_number, color: Color.fromRGBO(255, 88, 100, 1), ),

                                  hintText: "Nombre de pièces",
                                 
                                  hintStyle: TextStyle(
                                    
                                    fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 17,
                                      )
                            ),
                        ),
                         ),
                 ),
                 SizedBox(width:10),
                 Container(
                     height:50,
                     width:50,
                     decoration: BoxDecoration(
                       shape:BoxShape.circle,
                       color: Colors.white
                     ),
                     child:Icon(Icons.person,  color: Color.fromRGBO(255, 88, 100, 0.5))
                 )
                      ],
                    ),
                  ),
                 SizedBox(height:25),

                  Container(
                   height:55,
                   width:300,
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                             style: TextStyle(
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.attach_money, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Prix",
                            
                            hintStyle: TextStyle(
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),
                SizedBox(height:25),
                 Container(
                   height:55,
                   width:300,
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                             style: TextStyle(
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.map, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Localisation",
                           
                            hintStyle: TextStyle(
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),

                  SizedBox(height:25),
                 Container(
                   //height:55,
                   width:300,
                   constraints: BoxConstraints(
                     minHeight: 55
                   ),
                   //margin: EdgeInsets.only(left:30, right:30),
                   decoration: BoxDecoration(
                     color:Colors.white,
                     borderRadius:BorderRadius.circular(100)
                   ),
                   child:  Container(
                     margin: EdgeInsets.only(left:30, right:30),
                     child: TextField(
                          keyboardType: TextInputType.multiline,
                              maxLines: null,
                             style: TextStyle(
                                
                               color:Colors.pink
                             ),
                             decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.home, color: Color.fromRGBO(255, 88, 100, 1), ),

                            hintText: "Description",
                            
                            hintStyle: TextStyle(
                             
                              
                              fontWeight: FontWeight.w400,
                                color: Colors.black54,
                                fontSize: 17,
                                )
                      ),
                  ),
                   ),
                 ),

                 
                 SizedBox(height:20),
                Row(
                  children: <Widget>[
                     Container(
                       margin:EdgeInsets.only(left:40) ,
                   height:55,
                   width:120,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100),
                     color:Colors.white
                   ),
                   child: Container(
                     alignment: Alignment.center,
                     child:Text(
                       "Valider",
                       style: TextStyle(
                         color:Color.fromRGBO(255, 88, 100, 1),
                         fontSize: 20,
                         fontWeight: FontWeight.w300
                       ),
                     )
                   ),
                 )
                  ],
                ),
                SizedBox(
                  height:20
                ),
               Container(
                 margin:EdgeInsets.only(bottom: 40),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width:40,
                      decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/f.jpg"),
                          fit:BoxFit.cover
                        )
                      )
                    ),
                    //SizedBox(width:30),
                    Container(
                      height: 40,
                      width:40,
                      decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/g.png"),
                          fit:BoxFit.cover
                        )
                      )
                    )
                  ],
                ),
               )
               
              ],
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color.fromRGBO(255, 88, 100, 1),
      body:SingleChildScrollView(
        child:Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/4.jpg"),
                fit: BoxFit.cover,
                 colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              )
            ),
            child:Column(
              children: <Widget>[
                SizedBox(height:20),
                (MediaQuery.of(context).orientation == Orientation.portrait ) ?  ajouter() : ajouts(),

              ],
            )
          )
        
      )
    );
  }
}
