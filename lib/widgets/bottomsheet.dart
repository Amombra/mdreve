import 'package:flutter/material.dart';

class Monmodal extends StatefulWidget {
  @override
  _MonmodalState createState() => _MonmodalState();
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

class _MonmodalState extends State<Monmodal> {
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
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
                  child: Container(child: Column(
            children: <Widget>[
              Row(
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
              SizedBox(
                height:30
              ),

               Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left:10, right:10),
                        height:60,
                        width: MediaQuery.of(context).size.width/1.2,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:Border.all(width:1, color: Colors.black54),
                          color: Colors.white
                        ),
                        child:Stack(
                                  children: <Widget>[
                                     TextField(
                                      decoration: InputDecoration(
                                          hintText: "Recherche",
                                          labelStyle: TextStyle(
                                            fontSize: 20
                                            ),
                                            border: InputBorder.none
                                      ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left:240),
                                 height:70,
                                 width:70,
                                 decoration: BoxDecoration(
                                   border: Border.all(width:3, color:Colors.white),
                                   image: DecorationImage(
                                     image: AssetImage("assets/1.jpg"),
                                     fit:BoxFit.cover
                                   ),
                                   shape:BoxShape.circle,
                                 ),
                               )
                                  ],
                          ),
                      )
                    ],
                  )
            ],
          ),),
        ),
      )
    );
  }
  void _onButton(){
  showModalBottomSheet(context: context, builder: (context){
    return Column(
      children: <Widget>[
        Text("jfjjfjfj")
      ],
    );
  });
}
}

