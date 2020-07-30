import 'package:flutter/material.dart';
//For make icon
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
//For use link
import 'package:url_launcher/url_launcher.dart';
//For use NoSQL Database
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyAbility+',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppMain(title: 'MyAbility+'),
    );
  }
}

class AppMain extends StatefulWidget {
  AppMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Visibility(
        visible: isLoaded,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(''),
              Text('MyAbility+'),
              Text(''),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: oneController,
                  onChanged: (text) {
                  save('one', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status1',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus1, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus1, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus1, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: twoController,
                  onChanged: (text) {
                  save('two', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ), 
              Text(
                '$_status2',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus2, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus2, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus2, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: threeController,
                  onChanged: (text) {
                  save('three', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status3',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus3, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus3, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus3, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: fourController,
                  onChanged: (text) {
                  save('four', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status4',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus4, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus4, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus4, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: fiveController,
                  onChanged: (text) {
                  save('five', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status5',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus5,
                  child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus5,
                  child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus5, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: sixController,
                  onChanged: (text) {
                  save('six', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status6',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus6, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus6, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus6, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: sevenController,
                  onChanged: (text) {
                  save('seven', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status7',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus7, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus7, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus7, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: eightController,
                  onChanged: (text) {
                  save('eight', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status8',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus8, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus8, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus8, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: nineController,
                  onChanged: (text) {
                  save('nine', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status9',
                style: TextStyle(fontSize: 20)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus9, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus9, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus9, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Container(
                width: 230,
                height: 50,
                child: TextField(
                  controller: tenController,
                  onChanged: (text) {
                  save('ten', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 20,
                maxLengthEnforced: true,
                ),
              ),
              Text(
                '$_status10',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: _incrementStatus10, child: Text('+', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _decrementStatus10, child: Text('-', style: TextStyle(fontSize: 20))
                  ),
                  FlatButton(onPressed: _resetStatus10, child: Text('0', style: TextStyle(fontSize: 20))
                  ),
                ],
              ),
              Text(''),
              Text(''),
              //Link
              RaisedButton(
                onPressed: _launchURL,
                child: Text('ABOUT'),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Prefer for Link Package.
  _launchURL() async {
    const url = 'https://9vox2.netlify.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
    throw 'Could not launch $url';
    }
  }
  //Prefer for Link Package.


  //This code is based on this article.
  //https://www.virment.com/how-to-use-shared-preferences-in-flutter/
  //Prepare for load of Item & Status.
  @override
  void initState() {
    super.initState();
    _loadItem();
    _loadStatus();
  }
  //Prepare for load of Item & Status.

  
  //Controller for Item.(Item:one~ten)
  final oneController = TextEditingController();
  final twoController = TextEditingController();
  final threeController = TextEditingController();
  final fourController = TextEditingController();
  final fiveController = TextEditingController();
  final sixController = TextEditingController();
  final sevenController = TextEditingController();
  final eightController = TextEditingController();
  final nineController = TextEditingController();
  final tenController = TextEditingController();
  var isLoaded = false;
  //Controller for Item.

  //load function for Item.
  Future<void> _loadItem() async {
    final prefs1 = await SharedPreferences.getInstance();
    final prefs2 = await SharedPreferences.getInstance();
    final prefs3 = await SharedPreferences.getInstance();
    final prefs4 = await SharedPreferences.getInstance();
    final prefs5 = await SharedPreferences.getInstance();
    final prefs6 = await SharedPreferences.getInstance();
    final prefs7 = await SharedPreferences.getInstance();
    final prefs8 = await SharedPreferences.getInstance();
    final prefs9 = await SharedPreferences.getInstance();
    final prefs10 = await SharedPreferences.getInstance();
    oneController.text = prefs1.getString('one');
    twoController.text = prefs2.getString('two');
    threeController.text = prefs3.getString('three');
    fourController.text = prefs4.getString('four');
    fiveController.text = prefs5.getString('five');
    sixController.text = prefs6.getString('six');
    sevenController.text = prefs7.getString('seven');
    eightController.text = prefs8.getString('eight');
    nineController.text = prefs9.getString('nine');
    tenController.text = prefs10.getString('ten');
    setState(() {
      isLoaded = true;
    });
  }
  //load function for Item.

  //save function for Item.
  Future<void> save(key, text) async {
    final prefsSave = await SharedPreferences.getInstance();
    await prefsSave.setString(key, text);
    setState(() {
      isLoaded = true;
    });
  }
  //save function for Item.

  
  //Value for Status.
  int _status1 = 0;
  int _status2 = 0;
  int _status3 = 0;
  int _status4 = 0;
  int _status5 = 0;
  int _status6 = 0;
  int _status7 = 0;
  int _status8 = 0;
  int _status9 = 0;
  int _status10 = 0;
  //Value for Status.


  //Load Status function.
  _loadStatus() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status1 = prefs.getInt('_status1') ?? 0;
      _status2 = prefs.getInt('_status2') ?? 0;
      _status3 = prefs.getInt('_status3') ?? 0;
      _status4 = prefs.getInt('_status4') ?? 0;
      _status5 = prefs.getInt('_status5') ?? 0;
      _status6 = prefs.getInt('_status6') ?? 0;
      _status7 = prefs.getInt('_status7') ?? 0;
      _status8 = prefs.getInt('_status8') ?? 0;
      _status9 = prefs.getInt('_status9') ?? 0;
      _status10 = prefs.getInt('_status10') ?? 0;
    });
  }
  //Load Status function.


  //Save Status function.
  _saveStatus() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('_status1', _status1);
    prefs.setInt('_status2', _status2);
    prefs.setInt('_status3', _status3);
    prefs.setInt('_status4', _status4);
    prefs.setInt('_status5', _status5);
    prefs.setInt('_status6', _status6);
    prefs.setInt('_status7', _status7);
    prefs.setInt('_status8', _status8);
    prefs.setInt('_status9', _status9);
    prefs.setInt('_status10', _status10);
    setState(() {
      isLoaded = true;
    });
  }
  //Save Status function.


  //Increment status1-10.
  void _incrementStatus1 () async{
    setState(() {
      _status1++;
      _saveStatus();
    });
  }
  
  void _incrementStatus2 () async{
    setState(() {
      _status2++;
      _saveStatus();
    });
  }

  void _incrementStatus3 () async{
    setState(() {
      _status3++;
      _saveStatus();
    });
  }

  void _incrementStatus4 () async{
    setState(() {
      _status4++;
      _saveStatus();
    });
  }

  void _incrementStatus5 () async{
    setState(() {
      _status5++;
      _saveStatus();
    });
  }

  void _incrementStatus6 () async{
    setState(() {
      _status6++;
      _saveStatus();
    });
  }

  void _incrementStatus7 () async{
    setState(() {
      _status7++;
      _saveStatus();
    });
  }

  void _incrementStatus8 () async{
    setState(() {
      _status8++;
      _saveStatus();
    });
  }

  void _incrementStatus9 () async{
    setState(() {
      _status9++;
      _saveStatus();
    });
  }

  void _incrementStatus10 () async{
    setState(() {
      _status10++;
      _saveStatus();
    });
  }
  //Increment status1-10.


  //Decrement Status1-10.
  void _decrementStatus1 () async{
    setState(() {
      _status1--;
      _saveStatus();
    });
  }

  void _decrementStatus2 () async{
    setState(() {
      _status2--;
      _saveStatus();
    });
  }

  void _decrementStatus3 () async{
    setState(() {
      _status3--;
      _saveStatus();
    });
  }

  void _decrementStatus4 () async{
    setState(() {
      _status4--;
      _saveStatus();
    });
  }

  void _decrementStatus5 () async{
    setState(() {
      _status5--;
      _saveStatus();
    });
  }

  void _decrementStatus6 () async{
    setState(() {
      _status6--;
      _saveStatus();
    });
  }

  void _decrementStatus7 () async{
    setState(() {
      _status7--;
      _saveStatus();
    });
  }

  void _decrementStatus8 () async{
    setState(() {
      _status8--;
      _saveStatus();
    });
  }

  void _decrementStatus9 () async{
    setState(() {
      _status9--;
      _saveStatus();
    });
  }

  void _decrementStatus10 () async{
    setState(() {
      _status10--;
      _saveStatus();
    });
  }
  //Decrement Status1-10.


  //Reset Status function 1-10.
  _resetStatus1() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status1 = 0;
      prefs.remove('status1');
      _saveStatus();
    });
  }

  _resetStatus2() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status2 = 0;
      prefs.remove('status2');
      _saveStatus();
    });
  }

  _resetStatus3() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status3 = 0;
      prefs.remove('status3');
      _saveStatus();
    });
  }

  _resetStatus4() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status4 = 0;
      prefs.remove('status4');
      _saveStatus();
    });
  }

  _resetStatus5() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status5 = 0;
      prefs.remove('status5');
      _saveStatus();
    });
  }

  _resetStatus6() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status6 = 0;
      prefs.remove('status6');
      _saveStatus();
    });
  }

  _resetStatus7() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status7 = 0;
      prefs.remove('status7');
      _saveStatus();
    });
  }

  _resetStatus8() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status8 = 0;
      prefs.remove('status8');
      _saveStatus();
    });
  }

  _resetStatus9() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status9 = 0;
      prefs.remove('status9');
      _saveStatus();
    });
  }

  _resetStatus10() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _status10 = 0;
      prefs.remove('status10');
      _saveStatus();
    });
  }
  //Reset Status function 1-10.
}