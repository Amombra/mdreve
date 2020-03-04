import 'package:flutter/material.dart';
import 'package:mdreve/widgets/ajout.dart';
import 'package:mdreve/widgets/profil.dart';
import 'package:mdreve/widgets/maison.dart';
import 'package:mdreve/widgets/message.dart';
import 'package:mdreve/widgets/crud.dart';



class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget marecherche(){
      return  Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left:10, right:10),
                        height:60,
                        width: MediaQuery.of(context).size.width/1.2,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:Border.all(width:1, color: Colors.grey[200]),
                          color: Colors.white
                        ),
                        child:Stack(
                                  children: <Widget>[
                                     Container(
                                       padding: EdgeInsets.only(left:15, top:7),
                                       child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Recherche ...",
                                            labelStyle: TextStyle(
                                              fontSize: 20
                                              ),
                                              border: InputBorder.none
                                        ),
                               ),
                                     ),
                               Container(
                                 margin: EdgeInsets.only(left:240),
                                 height:70,
                                 width:70,
                                 decoration: BoxDecoration(
                                   border: Border.all(width:3, color:Colors.white),
                                   image: DecorationImage(
                                     image: AssetImage("assets/1.jpg"),
                                     fit:BoxFit.cover
                                   ),
                                   shape:BoxShape.circle,
                                 ),
                               )
                                  ],
                          ),
                      )
                    ],
                  );
    }

    Widget marecherches(){
      return  Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left:10, right:10),
                        height:60,
                        width: MediaQuery.of(context).size.width/1.2,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white
                        ),
                        child:Stack(
                                  children: <Widget>[
                                     TextField(
                                      decoration: InputDecoration(
                                          hintText: "Recherche",
                                          labelStyle: TextStyle(
                                            fontSize: 20
                                            ),
                                            border: InputBorder.none
                                      ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left:500),
                                 height:80,
                                 width:80,
                                 decoration: BoxDecoration(
                                   border: Border.all(width:3, color:Colors.white),
                                   image: DecorationImage(
                                     image: AssetImage("assets/1.jpg"),
                                     fit:BoxFit.cover
                                   ),
                                   shape:BoxShape.circle,
                                 ),
                               )
                                  ],
                          ),
                      )
                    ],
                  );
    }

    Widget likes(){
      return   Row(
                    children: <Widget>[
                      Container(
                        height:180,
                        width:320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                          ),
                          image: DecorationImage(fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                          image: AssetImage("assets/1.jpg"),
                                        )
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                          children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(top:15, bottom: 5),
                             child: Container(
                               alignment: Alignment.topLeft,
                               child:Text(
                                 "Totals",
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontSize: 17,
                                   fontWeight: FontWeight.bold
                                 ),
                               )
                             ),
                           ),

                            Padding(
                             padding: const EdgeInsets.only( top:15),
                             child: Container(
                               alignment: Alignment.topLeft,
                               child:Text(
                                 "Likes",
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontSize: 17,
                                   fontWeight: FontWeight.bold
                                 ),
                               )
                             ),
                           ),
                           SizedBox(
                             height:25
                           ),
                           Row(
                             children: <Widget>[
                               Padding(
                             padding: const EdgeInsets.only(left:20),
                             child: Container(
                               alignment: Alignment.topLeft,
                               child:Text(
                                   "17",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 40
                                   ),
                                 )
                             ),
                           ),
                           SizedBox(
                             width:40
                           ),
                           Icon(
                             Icons.folder_open,
                             color:Colors.white,
                             size:35
                           )
                             ],
                           )
                          ],
                        ),
                         
                          ],
                        ),
                      )
                    ],
                  );
    }

     Widget likess(){
      return   Row(
                    children: <Widget>[
                      Container(
                        height:180,
                        width:590,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                          ),
                          image: DecorationImage(fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                          image: AssetImage("assets/1.jpg")
                                        )
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                          children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(top:15, bottom: 5),
                             child: Container(
                               alignment: Alignment.topLeft,
                               child:Text(
                                 "Totals",
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontSize: 17,
                                   fontWeight: FontWeight.bold
                                 ),
                               )
                             ),
                           ),

                            Padding(
                             padding: const EdgeInsets.only( top:15),
                             child: Container(
                               alignment: Alignment.topLeft,
                               child:Text(
                                 "Likes",
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontSize: 17,
                                   fontWeight: FontWeight.bold
                                 ),
                               )
                             ),
                           ),
                           SizedBox(
                             height:25
                           ),
                           Row(
                             children: <Widget>[
                               Padding(
                             padding: const EdgeInsets.only(left:20),
                             child: Container(
                               alignment: Alignment.topLeft,
                               child:Text(
                                   "17",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 40
                                   ),
                                 )
                             ),
                           ),
                           SizedBox(
                             width:40
                           ),
                           Icon(
                             Icons.folder_open,
                             color:Colors.white,
                             size:35
                           )
                             ],
                           )
                          ],
                        ),
                           SizedBox(width:20),
                             Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:20),
                                      child: Text(
                                        "Diagramme",
                                        style: TextStyle(
                                          color:Colors.white,
                                          fontWeight:FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top:15),
                                  height: 90,
                                  width:130,
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60)
                                    ),
                                   
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text("Maison de reve", style:TextStyle(
          color:Colors.black
        )),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child:Container(
            child:Padding(
              padding: const EdgeInsets.only(left:18, right:18, top:20),
              child: Column(
                children: <Widget>[
                  (MediaQuery.of(context).orientation == Orientation.portrait ) ?  marecherche() : marecherches(),
                  SizedBox(height:20),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(
                            //Message
                            builder: (context)=>CrudPage()
                          ));
                        },
                           child: Container(
                          height:160,
                          width:MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)
                            ),
                            image: DecorationImage(fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                            image: AssetImage("assets/5.jpg")
                                          )
                          ),
                          child:Column(
                            children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(left:20, top:15, bottom: 5),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Totals",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),

                              Padding(
                               padding: const EdgeInsets.only(left:20, top:15),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Mes maisons",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),
                             SizedBox(
                               height:25
                             ),
                             Row(
                               children: <Widget>[
                                 Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                     "17",
                                     style: TextStyle(
                                       color:Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 40
                                     ),
                                   )
                               ),
                             ),
                             SizedBox(
                               width:40
                             ),
                             Icon(
                               Icons.folder_open,
                               color:Colors.white,
                               size:35
                             )
                               ],
                             )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width:8),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Ajout()
                          ));
                        },
                            child: Container(
                          height:160,
                          width:MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)
                            ),
                            image: DecorationImage(fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                            image: AssetImage("assets/4.jpg")
                                          )
                          ),
                          child:Column(
                            children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(left:20, top:15, bottom: 5),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Totals",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),

                              Padding(
                               padding: const EdgeInsets.only(left:20, top:12),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Ajouter une maison",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),
                             SizedBox(
                               height:17
                             ),
                             Row(
                               children: <Widget>[
                                 Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                     "17",
                                     style: TextStyle(
                                       color:Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 40
                                     ),
                                   )
                               ),
                             ),
                             SizedBox(
                               width:40
                             ),
                             Icon(
                               Icons.folder_open,
                               color:Colors.white,
                               size:35
                             )
                               ],
                             )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:20),
                  (MediaQuery.of(context).orientation == Orientation.portrait ) ?  likes() : likess(),
                  SizedBox(height:20),
                   Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Message()
                          ));
                        },
                             child: Container(
                          height:160,
                          width:MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)
                            ),
                            image: DecorationImage(fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                            image: AssetImage("assets/2.jpg")
                                          )
                          ),
                          child:Column(
                            children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(left:20, top:15, bottom: 5),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Totals",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),

                              Padding(
                               padding: const EdgeInsets.only(left:20, top:15),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Messages",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),
                             SizedBox(
                               height:25
                             ),
                             Row(
                               children: <Widget>[
                                 Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                     "17",
                                     style: TextStyle(
                                       color:Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 40
                                     ),
                                   )
                               ),
                             ),
                             SizedBox(
                               width:40
                             ),
                             Icon(
                               Icons.folder_open,
                               color:Colors.white,
                               size:35
                             )
                               ],
                             )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width:8),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Profil()
                          ));
                        },
                          child: Container(
                          height:160,
                          width:MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)
                            ),
                            image: DecorationImage(fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                            image: AssetImage("assets/5.jpg")
                                          )
                          ),
                          child:Column(
                            children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(left:20, top:15, bottom: 5),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Totals",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),

                              Padding(
                               padding: const EdgeInsets.only(left:20, top:15),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   "Mon Profil",
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),
                             SizedBox(
                               height:25
                             ),
                             Row(
                               children: <Widget>[
                                 Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                     "17",
                                     style: TextStyle(
                                       color:Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 40
                                     ),
                                   )
                               ),
                             ),
                             SizedBox(
                               width:40
                             ),
                             Icon(
                               Icons.folder_open,
                               color:Colors.white,
                               size:35
                             )
                               ],
                             )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),  
                ],
              ),
            )
          )
        ),
      )
    );
  }
}