import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? subscription;
  Future checkConnection() async{
    var connectivityResult=await(Connectivity().checkConnectivity());
    if (connectivityResult==ConnectivityResult.mobile){
      Fluttertoast.showToast(msg: "Connected with Mobile");
    }
    else if (connectivityResult==ConnectivityResult.wifi){
      Fluttertoast.showToast(msg: "Connected with WiFi");
    }
    else{Fluttertoast.showToast(msg: "Network Failed");}
  }
  @override
  void initState(){
    subscription=Connectivity().onConnectivityChanged.listen((event) {checkConnection();});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Winter Photography',style: TextStyle(fontSize: 25,color: Colors.white),),
        backgroundColor: Color(0xff30336b),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff95afc0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(20),
                child: ListTile(
                  onTap: (){},
                  title: Text('Winter'), leading: Icon(Icons.search),),),
              Padding( padding: EdgeInsets.only(left: 20,right: 20,top: 5),
                child: Column(
                  children: [
                    Container(
                      width: 440, height: 350,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffdff9fb),
                            Color(0xffc7ecee),
                            Color(0xff7ed6df),
                            Color(0xff48dbfb),
                            Color(0xff0abde3),],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,),
                        image: DecorationImage(
                          image: AssetImage('images/tre.PNG'),),
                        borderRadius: BorderRadius.circular(20),
                      ),),],),),
              Column(
                children: [
                  Padding( padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffdff9fb),
                                Color(0xffc7ecee),
                                Color(0xff7ed6df),
                                Color(0xff48dbfb),
                                Color(0xff0abde3),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/Ca.PNG'),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding( padding: EdgeInsets.only(right: 20,left: 40),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffdff9fb),
                                  Color(0xffc7ecee),
                                  Color(0xff7ed6df),
                                  Color(0xff48dbfb),
                                  Color(0xff0abde3),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              image: DecorationImage(
                                image: AssetImage('images/ice2.PNG'),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding( padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffdff9fb),
                                Color(0xffc7ecee),
                                Color(0xff7ed6df),
                                Color(0xff48dbfb),
                                Color(0xff0abde3),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/tree1.PNG'),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding( padding: EdgeInsets.only(right: 20,left: 40),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffdff9fb),
                                  Color(0xffc7ecee),
                                  Color(0xff7ed6df),
                                  Color(0xff48dbfb),
                                  Color(0xff0abde3),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              image: DecorationImage(
                                image: AssetImage('images/fox.PNG'),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 15,bottom: 15,left: 50,right: 50),
                child: Row(
                  children: [
                    Expanded(child: RaisedButton(
                      onPressed: (){},
                      color: Color(0xff130f40),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                      padding: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 5),
                      child: Text('Next',style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),),
                  ],),),

            ],
          ),
        ),
      ),
    );
  }
}

