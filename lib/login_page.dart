import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:prakenam/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if(_isBool == true){
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomePage(),));
        print("Log In Successfully");
        print(_isBool);
      }else{
        print("Sign In Firts");
        print(_isBool);
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if(_isBool == true){
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomePage(),));
        print(_isBool);
        print("Already Entered");
      }else{
        print(_isBool);
        print("Not Yet In");
      }
    });
  }

  void initState(){
    super.initState();
    _getBool();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Click For Enter",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(onPressed: _Boolean, child: const Text('Yuhuuuuu')),
              
            ],
          ),
        ),
      ),
    );
  }
}