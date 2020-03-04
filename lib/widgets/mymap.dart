import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'vitrine.dart';

class HomePage extends StatefulWidget {
  
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State  <HomePage> {
  
  Completer<GoogleMapController> _controller = Completer();

   MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  
  

  @override
  void initState() {
    super.initState();
  }
    double zoomVal=5.0;
  @override
  
  Widget build(BuildContext context) {
    
    Marker gramercyMarker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('Yopougon, Côte d’Ivoire'),
  position: LatLng(5.319529, -4.104188),
  infoWindow: InfoWindow(title: 'Selmaire'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);

Marker bernardinMarker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('bernardin'),
  position: LatLng(5.345392, -3.888831),
  infoWindow: InfoWindow(title: 'Bingerville, Côte d’Ivoire'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker blueMarker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('bluehill'),
  position: LatLng(5.300152, -3.942639),
  infoWindow: InfoWindow(title: 'Rue I55, Koumassi, Côte d’Ivoire'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);

//New York Marker

Marker newyork1Marker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('newyork1'),
  position: LatLng(5.321114,  4.026441),
  infoWindow: InfoWindow(title: 'Boulevard de la Paix, Le Plateau, Côte d’Ivoire'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker newyork2Marker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('newyork2'),
  position: LatLng(5.30824, -3.862551),
  infoWindow: InfoWindow(title: 'Bingerville, Côte d’Ivoire'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);
Marker newyork3Marker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('newyork3'),
  position: LatLng(5.333012, -4.020309),
  infoWindow: InfoWindow(title: 'Indénié, Le Plateau, Abidjan, Côte d’Ivoire'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueRed,
  ),
);

Marker newyork4Marker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('newyork4'),
  position: LatLng(5.34789, -3.99503),
  infoWindow: InfoWindow(title: 'Paroisse Saint Albert Le Grand-Caritas'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  ),
);

Marker newyork5Marker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('newyork5'),
  position: LatLng(5.412592, -3.032585),
  infoWindow: InfoWindow(title: 'Maféré'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  ),
);

Marker newyork6Marker = Marker(
    onTap: (){
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context)=>Profils()
    // ));
  },
  markerId: MarkerId('newyork6'),
  position: LatLng(5.235999, -3.126000),
  infoWindow: InfoWindow(title: 'Krinjabo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  ),
);

Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: _currentMapType,
        initialCameraPosition:  CameraPosition(target: LatLng(7.539989, -5.547080), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          newyork1Marker,newyork2Marker,newyork3Marker, newyork4Marker, newyork5Marker, newyork6Marker, gramercyMarker,bernardinMarker,blueMarker
        },
      ),
    );
  }

    return Scaffold(
      appBar: AppBar(
        title:Text("Maps"),
        actions: <Widget>[
          Icon(Icons.search, color: Colors.white,),
          Container(
            height:28,
            width:200,
            color: Colors.transparent,
           
            child:TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher',
                enabledBorder: UnderlineInputBorder(
                borderSide:  BorderSide(color: Colors.white),
                  ),
                hintStyle: TextStyle(
                  color: Colors.white,
                )
              ),
            )
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height:50,
            width:150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child:TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher'
              ),
            )
          ),
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
        ],
      ),
    );
    
  }
 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(7.539989, -5.547080), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(7.539989, -5.547080), zoom: zoomVal)));
  }
  


  Widget _boxes(String _image, double lat,double long,String restaurantName) {
    return  GestureDetector(
        onTap: () {
          _gotoLocation(lat,long);
        },
        child:Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(_image),
                            ),
                          ),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: myDetailsContainer1(restaurantName),
                          ),
                        ),

                      ],)
                ),
              ),
            ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(restaurantName,
            style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height:5.0),
        Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "4.1",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStarHalf,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
               Container(
                  child: Text(
                "(946)",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
          SizedBox(height:5.0),
        Container(
                  child: Text(
                "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              SizedBox(height:5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 17:00 Thu",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 15,tilt: 50.0,
      bearing: 45.0,)));
  }
}

