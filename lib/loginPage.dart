import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(),
        Text('ZAAS',style: TextStyle(fontWeight: FontWeight.bold, fontSize:30),),
        SizedBox(
          height: 30,
        ),
        Text('RECYCLE TOGETHER',style: TextStyle(fontSize: 18),),
        SizedBox(
          height: 70,
        ),
        Text('LOGIN',style: TextStyle(fontSize: 20),),
        SizedBox(
          height: 30,
        ),
        SizedBox(
        width: 250,
          child:TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'USERNAME',
              ),
            ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 250,
          child:TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'PASSWORD',
              ),
            ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: ElevatedButton(
             style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 15, 
                 fontStyle: FontStyle.normal),
          ),
            onPressed: () {},
            child: const Text('Login'),
          ),
        ),
      ],
    );
  }
}
