import 'package:flutter/material.dart';
import 'package:mdreve/widgets/register.dart';
import 'package:mdreve/widgets/welcome.dart';
import 'package:mdreve/widgets/dashboard.dart';
import 'package:mdreve/widgets/login.dart';


class UserFonction extends StatefulWidget {
  @override
  _UserFonctionState createState() => _UserFonctionState();
  
}
class Utilisateur {
  int id;
  String name;
 
  Utilisateur(this.id, this.name);
 
  static List<Utilisateur> getCompanies() {
    return <Utilisateur>[
      Utilisateur(1, 'Cocody Saint Jean'),
      Utilisateur(2, 'Koumassi SICOGI'),
      Utilisateur(3, 'Cocody Abatta'),
      Utilisateur(4, 'Yopougon Selmaire'),
      Utilisateur(5, 'Cités des Arts'),
    ];
  }
}

class _UserFonctionState extends State<UserFonction> {
   List<Utilisateur> _companies = Utilisateur.getCompanies();
  List<DropdownMenuItem<Utilisateur>> _dropdownMenuItems;
  Utilisateur _selectedCompany;
 
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }
  List<DropdownMenuItem<Utilisateur>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Utilisateur>> items = List();
    for (Utilisateur company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

    onChangeDropdownItem(Utilisateur selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child:Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/4.jpg"),
                fit:BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                
              )
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height:50),
                Column(
                    children: <Widget>[
                      Text(
                        "Mdreve",
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                      SizedBox(height: 15),
                      Stack(alignment: Alignment.bottomRight,
                        children: <Widget>[
                          Container(
                            height:90,
                            width: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:Colors.white,
                        ),
                          ),
                         Container(
                            height:60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:Colors.amber,
                        ),
                      ),
                      Container(
                            height:30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:Colors.white,
                        ),
                      )
                        ],
                      ),
                      
                     SizedBox(height:20),
                     Text(
                       "En tant que propriétaire",
                       style:TextStyle(
                         color:Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 20
                       )
                     )
                    ],
                  ),
                SizedBox(height:30),
                Container(
                  height:320,
                  width: 300,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                       SizedBox(height:40),
                      Container(
                        margin: EdgeInsets.only(left:35, right:35),
                       child: TextField(
                         style: TextStyle(
                           color:Colors.pink
                         ),
                         decoration: InputDecoration(

                        hintText: "Username",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.amber),
                         ),
                        hintStyle: TextStyle(
                          
                          fontWeight: FontWeight.w300,
                            color: Colors.black54,
                            fontSize: 17,
                            )
                    ),
                  ),
                     ),

                    
                     SizedBox(height:40),


                      Container(
                        margin: EdgeInsets.only(left:35, right:35),
                       child: TextField(
                         style: TextStyle(
                           color:Colors.pink
                         ),
                         decoration: InputDecoration(

                        hintText: "Password",
                        enabledBorder: UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.amber),
                         ),
                        hintStyle: TextStyle(
                          
                          fontWeight: FontWeight.w300,
                            color: Colors.black54,
                            fontSize: 17,
                            )
                    ),
                  ),
                     ),
                     SizedBox(height:30),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context)=>Welcome()
                         ));
                       },
                         child: Container(
                         height:45,
                         width:150,
                         decoration: BoxDecoration(
                           border: Border.all(width:1, color: Colors.amber),
                           borderRadius: BorderRadius.circular(80),
                           color:Colors.white
                         ),
                         child: Container(
                           alignment: Alignment.center,
                           child:Text(
                           "UserFonction",
                           style: TextStyle(
                             color: Colors.black
                           ),
                         ),
                         )
                       ),
                     ),
                     
                    ],
                  )
                  
                ),
                SizedBox(height:15),
                     Padding(
                       padding: const EdgeInsets.only(left:210, bottom:20),
                       child: Row(
                         children: <Widget>[
                           Text(
                             "Forget password ?",
                             style: TextStyle(
                               color: Colors.white
                             ),
                             
                           )
                         ],
                       ),
                     ),
                     SizedBox(height:20),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context)=>Login())
                         );
                       },
                       child: Text(
                         "Login",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                     )
              ],
            ),
          ),
        
      )
    );
  }
}