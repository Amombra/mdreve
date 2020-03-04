import 'package:flutter/material.dart';
import 'package:mdreve/models/maisonModel.dart';
import 'package:mdreve/models/mamaison.dart';
import 'package:mdreve/widgets/maison_service.dart';
import 'package:mdreve/widgets/detailHouse.dart';




class Maisons extends StatefulWidget {
  //final Locventes detail;

  //Maisons(this.detail);
  @override
  _MaisonsState createState() => _MaisonsState();
}

class _MaisonsState extends State<Maisons> {
  List<Locventes> maison = [];
    final List<Maison> modifItems = [];
      List<Maison> liste = [];


  Future getMaison() async{

    List<Locventes> res = await loadchargerJson();
    if (res != null){
      setState(() {
        maison = res;
      });
    }
  }
   Future charge() async {
  }

    @override
  void initState() {
    getMaison();
    charge();
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child:SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                // Row(
                //   children: <Widget>[
                //     Text(
                //       "Mdreve",
                //       //style:TextStyle()
                //     )
                //   ],
                // ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(
                     builder: (context)=>DetailHouse()
                   ));
                 },
                  child: Container(
                   height:700,
                    color:Colors.grey[200],
                    child: ListView.builder(
                     itemCount: maison.length,
                     itemBuilder: (context, i){
                       return Container(
                         height: 390,
                         decoration: BoxDecoration(
                           border: Border.all(width: 1, color: Colors.grey[200]),
                         ),
                         child: Column(
                          children: <Widget>[
                            SizedBox(height:20),
                           Container(
                                height:200,
                                width: 300,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: NetworkImage(maison[i].maison[i].image)
                                    )
                                ),
                              ),
                             SizedBox(height:9),
                            Padding(
                              padding: const EdgeInsets.only(left:30, right:25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child:Text(
                                     maison[i].maison[i].localisation,
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20
                                     ),
                                    ),
                                  ),

                                  Icon(Icons.favorite_border, color: Colors.red,),
                                ],
                              ),
                            ),
                            SizedBox(height:9),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    left:30
                                  ),
                                  child: Text(
                                   maison[i].maison[i].typeMaison,
                                   style: TextStyle(
                                     fontSize:15,
                                     fontWeight: FontWeight.w400
                                   ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:9),
                             Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    left:30
                                  ),
                                  child: Text(
                                   maison[i].maison[i].nombrePiece,
                                   style: TextStyle(
                                     fontSize:15,
                                     fontWeight: FontWeight.w400
                                   ),
                                  ),
                                )
                              ],
                            ),
                              SizedBox(height:9),
                              Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    left:30
                                  ),
                                  child: Text(
                                   maison[i].maison[i].prix,
                                   style: TextStyle(
                                     fontSize:15,
                                     fontWeight: FontWeight.w400,
                                     color:Colors.red
                                   ),
                                  ),
                                )
                              ],
                            ),
                            //Divider()
                      ],
                      ),
                       );
                    
                     }
                   ),
                 ),
               )
              ],
            ),
          ),
        )
      ),
    );
  }
}