import 'package:flutter/material.dart';
import 'package:mdreve/widgets/register.dart';
import 'package:mdreve/widgets/welcome.dart';
import 'package:mdreve/widgets/dashboard.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                     
                    ],
                  ),
                SizedBox(height:60),
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
                          
                          fontWeight: FontWeight.w400,
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
                          
                          fontWeight: FontWeight.w400,
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
                           builder: (context)=>Dashboard()
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
                           "Login",
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
                           builder: (context)=>Register())
                         );
                       },
                       child: Text(
                         "Register",
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