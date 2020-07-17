import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/components/no_data_card.dart';
import 'package:travelappextranet/utils/constants.dart';

class NoDataScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NoDataScreen();
  }

}
 class _NoDataScreen extends State<NoDataScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          appBar:AppBar(
            elevation: 0,
            centerTitle: false,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
                color: kPrimaryColor
            ),
          ),
          body:  No_Data_Card(),
      ),
    );
  }

 }