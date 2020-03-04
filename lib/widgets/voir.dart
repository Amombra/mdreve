import 'package:flutter/material.dart';
import 'package:mdreve/widgets/login.dart';
import 'package:mdreve/widgets/register.dart';


class Voir extends StatefulWidget {

  static const routeName = '/';

  @override
  _VoirState createState() => new _VoirState();
}

class _VoirState extends State<Voir> {


  final _myListKey = GlobalKey<AnimatedListState>();

 // List<Categorie> categories = [];

  @override
  void initState() {
    super.initState();
    loadCategories();
  }

  void loadCategories() async {
   // List<Categorie> categoriesList = await Categorie.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/1.jpg"),
                  fit: BoxFit.cover,
                   colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn)
              )
          ),
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  customText('Mdreve', weight: FontWeight.bold, size: 35.0),
                  SizedBox(height:30),
                  Container(
                    height: 60,
                    width:60,
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      color:Colors.white
                    ),
                    child:Icon(Icons.star, color:Colors.amber, size: 60,)
                  ),
                  SizedBox(height:50),
                  //Divider,
                  Container(
                    width: 70.0,
                    height: 1.5,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20.0,),
                  customText('Choisissez la maison de vos reves', size: 20.0),
                  SizedBox(height:50),
                  customButton("Signup"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 1.5,
                          width: 100.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('OR SKIP', style: TextStyle(color: Colors.white),),
                        ),
                        Container(
                          height: 1.5,
                          width: 100.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  customButtons("Login"),
                  Spacer()
                ],
              ),
          )
        ),
    );
  }

    Widget customButtons(String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Login()));
          },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          side: BorderSide(color: Colors.white)
        ),
        color: Colors.transparent,
        child: Container(
          height: 55,
          width: double.infinity,
          alignment: Alignment.center,
          child: customText(data, size: 20.0),
        ),
      ),
    );
  }

  Widget customButton(String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: RaisedButton(
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) =>Register()));
          },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          side: BorderSide(color: Colors.white)
        ),
        color: Colors.transparent,
        child: Container(
          height: 55,
          width: double.infinity,
          alignment: Alignment.center,
          child: customText(data, size: 20.0),
        ),
      ),
    );
  }

  Widget customText(String data, {double size, FontWeight weight, Color color: Colors.white}) {
    return Text(data, style: TextStyle(color: color, fontWeight: weight, fontSize: size,), textAlign: TextAlign.center,);
  }
}

