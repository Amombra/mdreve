import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool isSwitch = false;
    //File _image;

  Future getImage() async {

    setState(() {
     // _image = image;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.5,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/a.jpg",
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black54.withOpacity(0.3), BlendMode.darken))),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Katché",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(" Opportune",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: <Widget>[
                              Text("En ligne",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17)),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.brightness_1,
                                color: Colors.green,
                                size: 15,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                       // pickimagefromgalery(ImageSource.gallery);
                      },
                        child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 50,
                        width: 50,
                        child: Icon(
                          OMIcons.photoCamera,
                          color: Colors.pink,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
              alignment: Alignment.topLeft,
              heightFactor: 0.1,
              child: Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 50,
                      child: Icon(
                        OMIcons.brightness2,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Mode Nuit"),
                    Spacer(),
                    Switch(
                      onChanged: (bool value) {
                        setState(() {
                          value = isSwitch;
                          isSwitch = !isSwitch;
                        });
                      },
                      value: isSwitch,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.photoCamera, "Statut en ligne", "activé",
                    Colors.blue),
                SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.people, "Nom d'utilisateur", "Opportune Katché",
                    Colors.greenAccent),
                SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.photoCamera, "Statut en ligne", "activé",
                    Colors.purple),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: Text(
                      'Compte',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.alarm, "Changer Nom d'utilisateur", "activé",
                    Colors.redAccent),
                SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.alarm, "Changer Mot de passe", "activé",
                    Colors.redAccent),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: Text(
                      'Paramètre',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
                myRow(OMIcons.alarm, "Sons et Notification", "activé",
                    Colors.redAccent),
                    SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.alarm, "Sons et Notification", "activé",
                    Colors.redAccent),
                    SizedBox(
                  height: 12,
                ),
                myRow(OMIcons.alarm, "Sons et Notification", "activé",
                    Colors.redAccent),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget myRow(IconData icon, String title, String subtitle, Color color) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 50,
          width: 50,
          child: Icon(
            icon,
            color: Colors.white,
          ),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title, style: TextStyle(color: Colors.black, fontSize: 20)),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
