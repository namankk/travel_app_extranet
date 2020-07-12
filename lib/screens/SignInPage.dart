import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/screens/HomePage.dart';
import 'package:travelappextranet/screens/products_screen.dart';
import 'package:travelappextranet/utils/Buttons.dart';
import 'package:travelappextranet/utils/TextStyles.dart';
import 'package:travelappextranet/utils/constants.dart';
import 'package:travelappextranet/utils/forms.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isOtp=false;
  bool proceed=false;
  TextEditingController _textEditingControllerPassword;
  Timer _timer;
  int _start = 20;

  double _opacity=0.3;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(value)));
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            timer.cancel();
            _opacity=1;
          } else {
            _start = _start - 1;
          }
        },
      ),
    );}
  String formatHHMMSS(int seconds) {
    int hours = (seconds / 3600).truncate();
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();

    String hoursStr = (hours).toString().padLeft(2, '0');
    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    if (hours == 0) {
      return "$minutesStr:$secondsStr";
    }

    return "$hoursStr:$minutesStr:$secondsStr";
  }

    @override
    void dispose() {
      _timer.cancel();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: NormalText("SignIn", kblack, 20.0),
        backgroundColor: kwhite,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
           /*   Icon(
                Icons.airplanemode_active,
                color: kdarkBlue,
                size: 35,
              ),
              SizedBox(height: 10),*/
              BoldText("QuickStay24", 30.0, kPrimaryColor),
              NormalText("Extranet", kPrimaryColor, 30.0),
              SizedBox(
                height: 30,
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: NormalForm(Icons.phone, "Mobile Number")),

              isOtp?Container():Column(
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),child: PasswordForm(_textEditingControllerPassword)),
                ],
              ),
              /*OTP view*/
              proceed?Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                              child: OtpForm("Enter OTP")
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Opacity(
                          opacity: _opacity,
                          child: RaisedButton(
                            color: kdarkBlue,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: BoldText("Resend OTP",15.5,kwhite),
                            onPressed: (){
                              if(_opacity==1){
                                setState(() {
                                  _opacity=0.3;
                                });
                              }else{
                                print("otp already send");
                              }

                            },
                          ),
                        )
                      ],
                    ),
                    Align(alignment: Alignment.centerRight,child: Text(formatHHMMSS(_start))),
                  ],
                ),
              ):Container(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: WideButton.bold("PROCEED", () {
                  setState(() {
                    if(isOtp){
                      proceed=true;
                      print("OTP API call");
                      showInSnackBar("Need to call OTP API");
                    //  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Need to call OTP API")));
                      startTimer();
                    }else{
                      print("Passwrod API call");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductsScreen()));
                    }

                  });
//                Navigator.push(context, MaterialPageRoute(builder: (_) {
//                  return Home();
//                }));
                }, true,backgroundColor: kPrimaryColor,),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 2,
                    width: 100,
                    color: kdarkBlue,
                  ),
                  NormalText("OR", kdarkBlue, 15.5),
                  Container(
                    height: 2,
                    width: 100,
                    color: kdarkBlue,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: WideButton.bold(isOtp?"Use Password":"Use OTP", () {
                  setState(() {
                    isOtp=!isOtp;
                    proceed=false;
                  });
//                Navigator.push(context, MaterialPageRoute(builder: (_) {
//                  return Home();
//                }));
                }, true,backgroundColor: kSecondaryColor,),
              ),
              SizedBox(
                height: 10,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}