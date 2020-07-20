import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/models/product.dart';
import 'package:travelappextranet/utils/constants.dart';

import 'UpdateProfile.dart';


class BodyProductDetails extends StatelessWidget {
  final Product product;

  const BodyProductDetails({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
//                  Center(
//                    child: Hero(
//                      tag: '${product.id}',
//                      child: Image.asset("assets/images/nodata2.png",height: 200,)
//                    ),
//                  ),
               //   ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hotel Name",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "Mahipalpur,Delhi",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 0.5, // 30 padding
                            vertical: kDefaultPadding / 5, // 5 top and bottom
                          ),
                          decoration: BoxDecoration(
                              color: korange,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Text(
                            "ACTIVE",
                            style: Theme.of(context).textTheme.button.apply(color: kwhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hotel Contact : 8795844578",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          "Reception Number: 854587587",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Manager Name : KK",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          "Manager Number: 854587587",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hotel Address : A 56 Road number 4 street no 11 Mahipalpur, Delhi 11037",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hotel Email : KK@g.com",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          "Hotel Secondary Email: KKK@g.com",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),

                ],
              ),
            ),
            UpdateProfile()
           // ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
