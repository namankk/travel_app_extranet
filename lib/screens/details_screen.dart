import 'package:flutter/material.dart';
import 'package:travelappextranet/models/product.dart';
import 'package:travelappextranet/utils/constants.dart';

import 'BodyProductDetails.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: BodyProductDetails(
        product: product,
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
      centerTitle: true,
      title: Text(
        'My profile',
        style: TextStyle(color: kBackgroundColor),
      ),
    );
  }
}
