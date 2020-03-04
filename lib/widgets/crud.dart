import 'package:flutter/material.dart';
import 'package:mdreve/widgets/maison.dart';
class CrudPage extends StatefulWidget {
  @override
  _CrudPageState createState() => _CrudPageState();
}

class _CrudPageState extends State<CrudPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:AssetImage("assets/5.jpg"),
                  fit:BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                )
              ),
              child:Column(
                children: <Widget>[
                  Container(
                    height:70,
                    margin: EdgeInsets.only(
                      top:10
                    ),
                    alignment: Alignment.center,
                    child:Text(
                    "Mes CRUD",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    )
                  ),
                  ),
                  
                  SizedBox(height:20),
                  Container(
                    height: 600,
                    color:Colors.grey[200],
                    child:ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, i){
                        return Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left:15, right: 10),
                              color:Colors.white,
                              height: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: AssetImage("assets/5.jpg"),
                                        fit:BoxFit.cover
                                      )
                                    ),
                                  ),
                                  SizedBox(width:10),
                                  Text(
                                    "Cocody Abatta"
                                  ),
                                  SizedBox(width:10),
                                  IconButton(
                                    icon:Icon(Icons.delete, color:Colors.red),
                                    onPressed: (){},
                                  ),
                                  SizedBox(width:10),
                                   IconButton(
                                    icon:Icon(Icons.edit, color:Colors.grey),
                                    onPressed: (){},
                                  ),
                                   SizedBox(width:10),
                                   IconButton(
                                    icon:Icon(Icons.remove_red_eye,color:Colors.grey),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=>Maisons()
                                      ));
                                    },
                                  ),
                                ],
                              ),
                              
                            ),
                            Container(
                              height: 2,
                              width:200,
                              color: Colors.grey[200],
                            )
                          ],
                        );
                      },
                    )
                  )
                ],
              )
            ),
          
        ),
      )
    );
  }
}