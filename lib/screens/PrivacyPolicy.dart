import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/components/no_data_card.dart';
import 'package:travelappextranet/utils/constants.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PrivacyPolicy();
  }

}
class _PrivacyPolicy extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text('Privacy Policy'),
        ),
        body: No_Data_Card(),

      ),
    );
  }

}