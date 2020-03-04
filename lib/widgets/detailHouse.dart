import 'package:flutter/material.dart';
import '../widgets/mymap.dart';
import '../widgets/floatinButton.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:intl/intl.dart' as intl;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';



class DetailHouse extends StatefulWidget {
  
  @override
  _DetailHouseState createState() => _DetailHouseState();
}
class Company {
  int id;
  String name;
 
  Company(this.id, this.name);
 
  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Cocody Saint Jean'),
      Company(2, 'Koumassi SICOGI'),
      Company(3, 'Cocody Abatta'),
      Company(4, 'Yopougon Selmaire'),
      Company(5, 'Cités des Arts'),
    ];
  }
}

class _DetailHouseState extends State<DetailHouse> {
  var data = ['Duplex', '2 Chbres Salon', 'Studio', '1 Chbre Salon'];
    var selected = [];
    var demoIndex = 0;

  int _value = 1;
  double _lowerValue = 50;
  double _upperValue = 180;
  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;
 
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }
 
  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }
 
  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }
  @override
  Widget build(BuildContext context) {
//     Widget float1() {
//     return Container(
//       child: FloatingActionButton(
//         onPressed: null,
//         tooltip: 'First button',
//         child: Icon(Icons.add),
//       ),
//     );
// }
// Widget float2() {
//     return Container(
//       child: FloatingActionButton(
//         onPressed: null,
//         tooltip: 'Second button',
//         child: Icon(Icons.add),
//       ),
//     );
// }
    Widget monslide(){
      return Container(
            margin: EdgeInsets.only(top: 50, left: 50, right: 50),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              values: [60, 160],
//              ignoreSteps: [
//                FlutterSliderIgnoreSteps(from: 120, to: 150),
//                FlutterSliderIgnoreSteps(from: 160, to: 190),
//              ],
              max: 200,
              min: 50,
              maximumDistance: 300,
              rangeSlider: true,
              rtl: true,
              handlerAnimation: FlutterSliderHandlerAnimation(

                  curve: Curves.elasticOut,
                  reverseCurve: null,
                  duration: Duration(milliseconds: 700),
                  scale: 1.4),
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue;
                _upperValue = upperValue;
                setState(() {});
              },
            ),
          );
    }
    return Scaffold(
    //       floatingActionButton: AnimatedFloatingActionButton(
    //     //Fab list
    //     // fabButtons: <Widget>[
    //     //     float1(), float2()
    //     // ],
    //     colorStartAnimation: Colors.blue,
    //     colorEndAnimation: Colors.red,
    //     animatedIconData: AnimatedIcons.menu_close //To principal button
    // ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        title: Text(
          "Logis",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
               _onButton();
              },
              icon: Icon(Icons.swap_vert),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    OMIcons.people,
                    size: 40,
                    color:Colors.white
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Katché ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Opportune ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      " Membre depuis   25 jours",
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Colors.red),
                    ),
                    Text(
                      "283 Annonces,",
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF48647a)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Stack(
            children: <Widget>[
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: <Widget>[
                  Image.asset(
                    "assets/1.jpg",
                  ),
                 
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "1500000 FcFA",
                    style: TextStyle(color: Color(0xFFf0bb2f), fontSize: 25),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Triplex 14 pièces - 1800m² - Riviera Golf 4",
                    style: TextStyle(
                        color: Color(0xFF48647a),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        OMIcons.home,
                        color: Color(0xFFf0bb2f),
                      ),
                      Text(
                        "Villas",
                        style: TextStyle(
                            color: Color(0xFF48647a), fontSize: 16)),
                      Icon(
                        OMIcons.addLocation,
                        color: Color(0xFF48647a),
                      ),
                      Text(
                        "Cocody, Abidjan, Côte d'ivoire",
                          style: TextStyle(
                              color: Color(0xFF48647a), fontSize: 16)),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Nous mettons en vente un superbe triplex de plus 14 pièces, sur 1800m², très propre et prête à être habité avec une piscine, un vaste jardin, un vaste garage pouvant accueillir plus de 10 voitures, un ascenseur, dans un cadre très sécurisé, paisible et agréable à la Riviera Golf 4.",
                    style: TextStyle(fontSize: 15, height: 1.3),
                    textAlign: TextAlign.justify,
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Center(
                    child:Container(
                      height: 150,
                      width: 350,
                      color:Colors.grey[200],
                      child: IconButton(
                      icon:Icon(Icons.add_location, size: 70,color:Colors.orange),
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>HomePage()
                        ));
                      },
                  ),
                    ),
                  ),
                 // FancyFab(),
                  
                ],
              ),
            ],
          )),

        ],
      ),
    );
  }
   void _onButton(){
  showModalBottomSheet(context: context, isScrollControlled: true, builder: (context){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:20, top:55),
          child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   IconButton(icon: Icon(Icons.close,),onPressed: (){
                     Navigator.pop(context);
                   },),

                   Text(
                     "Filters",
                     style: TextStyle(
                       fontWeight: FontWeight.bold
                     ),
                   ),

                   Text(
                     "Done",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color:Colors.blue
                     ),
                   )
                ],),
        ),
              SizedBox(
                height:25
              ),

               Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:40),
                        height:150,
                        width: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/1.jpg"),
                            fit:BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                          )
                        ),
                        child:Container(
                          alignment: Alignment.center,
                          child:Text(
                          "MDREVES",
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                        )
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          "Choisissez la Tranche de Prix",
                          style:TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                      )
                    ],
                  ),

          SizedBox(height:10),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              key: Key('3343'),
              values: [300000000, 1600000000],
              rangeSlider: true,
              tooltip: FlutterSliderTooltip(
                alwaysShowTooltip: true,
                numberFormat: intl.NumberFormat.compact(),
              ),
              max: 2000000000,
              min: 0,
              step: 20,
              jump: true,
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue;
                _upperValue = upperValue;
                setState(() {});
              },
            ),
          ),
           SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          "Ajouter un lieu",
                          style:TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:25),
                  Container(
                  margin: EdgeInsets.only(left:50, right:50),
                  height:60,
                  width:300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border:Border.all(width: 1, color:Colors.grey)
                  ),
                  child: Padding(
                    padding:EdgeInsets.only(left:20),
                    child:DropdownButton(
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold
                    // ),
                    icon: Icon(Icons.check, color: Colors.green,),
                    value: _selectedCompany,
                    items: _dropdownMenuItems,
                    onChanged: onChangeDropdownItem,
                  ),
                  )
                ),

                SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                     Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "Type de maison",
                            style:TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                      
                    ],
                  ),
                  SizedBox(height:20),
                   Container(
                     height:100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ChoiceChip(
              label: Text(data[index]),
              selected: _value == index,
              selectedColor: Colors.green,
              onSelected: (bool value) {
                setState(() {
                  _value = value ? index : null;
                });
              },
              
              backgroundColor: Colors.blue,
              labelStyle: TextStyle(color: Colors.white),
            );
          },
        ),
      ),
               
               
                
                 

      ],
    );
  });
}

  customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: BoxDecoration(),
      child: Container(
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: Offset(0, 1))
          ],
        ),
      ),
    );
  }
}
void launcher(String toMailId, String subject, String body){
  var url = 'mailto:$toMailId?subject=$subject&body=$subject';
  launch(url);
}
void sendSms(String number){
  var url ='phone number';
  launch(url);
}

void call(String number){
  var url ='tel://+225 07263550';
  launch(url);
}


 void whatsAppOpen() async {
    await FlutterLaunch.launchWathsApp(phone: "+22577129951", message: "Bonjour");
  }