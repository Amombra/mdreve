import 'package:flutter/material.dart';

class Ajouter extends StatefulWidget {
  @override
  _AjouterState createState() => _AjouterState();
}

class _AjouterState extends State<Ajouter> {
  @override
  Widget build(BuildContext context) {
    Widget form(){
      return    Container(
                   margin: EdgeInsets.only(left:22, right:20, top:100),
                  height:480,
                  width: 314,
                  color:Colors.white,
                  child:Column(
                    children: <Widget>[
                      SizedBox(height:30),
                      Container(
                        margin:EdgeInsets.only(left:50, right:50),
                        child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Type de maison",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                    ),
                  ),
                      ),

                  SizedBox(height:25),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Nombre de pièce",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),

                  SizedBox(height:25),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Prix",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),
                  SizedBox(
                    height:25
                  ),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Localisation",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),
                    SizedBox(
                    height:25
                  ),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Localisation",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),
                  SizedBox(height:40),
                  GestureDetector(
                    onTap: (){},
                      child: Container(
                      height:60,
                      width:180,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:Colors.blue
                      ),
                      child:Container(
                        alignment:Alignment.center,
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize:20
                          ),
                        ),
                      )
                    ),
                  )
                    ],
                  )
                );
    }

    Widget forms(){
      return    Container(
                   margin: EdgeInsets.only(left:36, right:20, top:150),
                  height:480,
                  width: 590,
                  color:Colors.white,
                  child:Column(
                    children: <Widget>[
                      SizedBox(height:30),
                      Container(
                        margin:EdgeInsets.only(left:50, right:50),
                        child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Type de maison",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                    ),
                  ),
                      ),

                  SizedBox(height:25),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Nombre de pièce",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),

                  SizedBox(height:25),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Prix",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),
                  SizedBox(
                    height:25
                  ),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Localisation",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),
                    SizedBox(
                    height:25
                  ),
                   Container(
                     margin:EdgeInsets.only(left:50, right:50),
                     child: TextField(
                           style: TextStyle(
                             color:Colors.pink
                           ),
                           decoration: InputDecoration(

                          hintText: "Localisation",
                          enabledBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.blue),
                           ),
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 17,
                              )
                      ),
                  ),
                   ),
                  SizedBox(height:40),
                  GestureDetector(
                    onTap: (){},
                      child: Container(
                      height:60,
                      width:180,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:Colors.blue
                      ),
                      child:Container(
                        alignment:Alignment.center,
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize:20
                          ),
                        ),
                      )
                    ),
                  )
                    ],
                  )
                );
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child:Stack(
              children: <Widget>[
                Container(
                  height:220,
                  width: double.infinity,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                       bottomRight: Radius.circular(100)
                    ),
                    color:Colors.blue,
                  ),
                  child:Column(
                    children: <Widget>[
                      //Icon(Icons.home, color:Colors.white, size: 70,),
                      SizedBox(height:20),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Ajouter une maison",
                          style:TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          )
                        ),
                      ),
                    ],
                  )
                ),

          (MediaQuery.of(context).orientation == Orientation.portrait ) ?  form() : forms(),


              
              ],
            ),
          ),
          ),
      ),
    );
  }
}