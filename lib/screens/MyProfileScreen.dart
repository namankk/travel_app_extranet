import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/models/product.dart';
import 'package:travelappextranet/utils/constants.dart';

import 'BodyProductDetails.dart';

class MyProfileScreen extends StatefulWidget{
  final Product product;

  MyProfileScreen({this.product});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NyProfileScreen();
  }

}
class _NyProfileScreen extends State<MyProfileScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: BodyProductDetails(
        product: widget.product,
      ),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(Icons.arrow_back,color: kBackgroundColor,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'My profile',
        style: TextStyle(color: kBackgroundColor),
      ),
    );
  }


}