import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mdreve/models/maisonModel.dart';
//import 'package:mdreve/models/mamaison.dart';
import 'package:mdreve/widgets/maison_service.dart';
import 'package:mdreve/widgets/maison.dart';
import 'package:mdreve/widgets/choix.dart';



class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
    List<Locventes> maison = [];

    Future getMaison() async{

    List<Locventes> res = await loadchargerJson();
    if (res != null){
      setState(() {
        maison = res;
      });
    }
  }

    @override
  void initState() {
    getMaison();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      Widget moncarousel(){
      return Container(
        height:250,
        child: Carousel(

          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 6,),
          dotSize: 3,
          indicatorBgPadding: 20,

          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/6.jpg'),
            AssetImage('assets/8.jpg'),
            AssetImage('assets/7.jpg'),
            AssetImage('assets/4.jpg'),
            AssetImage('assets/5.jpg'),
          ],
          
        ),
      );
    }
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          child:Column(
            children: <Widget>[
             Stack(
               children: <Widget>[
                  moncarousel(),
                  Container(
                    margin: EdgeInsets.only(
                      left:30,
                      top:80
                    ),
                    child: Text(
                      "Touvez la maison de vos reves avec Mdreve",
                      style: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    ),
                  )
               ],
             ),
              SizedBox(height:15),
              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Choix()
                      ));
                  },
                  child:Text(
                    'Cliquez ici pour la description de la maison de ses reves',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      //color:Colors.red
                    ),
                  )
                ),
              ),
             SizedBox(height:15),
            Container(
                height:500,
                child: ListView.builder(
                 itemCount: maison.length,
                 itemBuilder: (context, i){
                   return GestureDetector(
                     onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Maisons()));
                 },
                       child: Container(
                       margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                       height: 150,
                       width: 280,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                         image: DecorationImage(fit: BoxFit.cover,
                         colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                           image: NetworkImage(maison[i].image)
                         )
                       ),
                       child: Container(
                         alignment: Alignment.center,
                         child:Text(
                         maison[i].nom,
                         style: TextStyle(
                           color:Colors.white,
                           fontWeight: FontWeight.bold,
                           fontStyle: FontStyle.italic,
                           fontSize: 30
                         ),
                       ),
                       )
                     ),
                   );
                 },
                )
              ),
             
            ],
          )
        ),
      )
    );
  }
}