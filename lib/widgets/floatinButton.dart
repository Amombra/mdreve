
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_launch/flutter_launch.dart';
class FancyFab extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  FancyFab({this.onPressed, this.tooltip, this.icon});

  @override
  _FancyFabState createState() => _FancyFabState();
}

class _FancyFabState extends State<FancyFab>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget add() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: null,
        tooltip: 'Gmail',
        child: IconButton(
          icon: Icon(Icons.email),
          onPressed: (){
            launcher('jeremiedry@gmail.com', 'Location de maison', 'je veux une maison');
          },
          )
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: null,
        tooltip: 'Téléphone',
        child:  IconButton(
          icon: Icon(Icons.phone),
          onPressed: (){
             launch('tel:+225 52419903');
          },
          )
      ),
    );
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: null,
        tooltip: 'Message',
        child:  IconButton(
          icon: Icon(Icons.message),
          onPressed: (){
             launch('sms:+225 01481822');
          },
          )
      ),
    );
  }
  Widget inboxs() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: null,
        tooltip: 'Whatsapp',
        child:  IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: (){
            whatsAppOpen();
          },
          )
      ),
    );
  }

  Widget toggle() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 4.0,
            0.0,
          ),
          child: add(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 3.0,
            0.0,
          ),
          child: image(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 2.0,
            0.0,
          ),
          child: inbox(),
        ),
        SizedBox(height:18),
         Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value,
            0.0,
          ),
          child: inboxs(),
        ),
        toggle(),
      ],
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