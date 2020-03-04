import 'package:flutter/material.dart';
import 'package:mdreve/widgets/voir.dart';


class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body:SafeArea(
         child: Container(
           child:Column(
             children: <Widget>[
               SizedBox(height:20),
               Container(
                 alignment: Alignment.center,
                 child: Text(
                   "Bienvenue",
                   style: TextStyle(
                     color:Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 30
                   ),
                 ),
               ),
               SizedBox(height:60),
               Container(
                 alignment: Alignment.center,
                 child:Icon(
                   Icons.home,
                   color:Colors.white,
                   size: 250,
                   ),
               ),
               SizedBox(height: 30,),
               Container(
                 margin: EdgeInsets.only(left:20, right:20),
                 child: Text(
                     "Trouvez la maison de vos reves sur mdreve, ventes et locations",
                     style: TextStyle(
                       color:Colors.white,
                       fontWeight: FontWeight.w400,
                       fontSize: 20
                     ),
                   ),
               ),
                SizedBox(height:70),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(
                     builder: (context)=>Voir()
                   ));
                 },
                  child: Container(
                   height:60,
                   width: 230,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100),
                     color: Colors.white
                   ),
                   child:Container(
                     alignment: Alignment.center,
                     child: Text(
                       "Commencer",
                       style: TextStyle(
                         color:Colors.amber,
                         fontWeight: FontWeight.w500,
                         fontSize: 20
                       ),
                     ),
                   )
                 ),
               )
             ],
           )
         ),
         
      )
    );
  }
}