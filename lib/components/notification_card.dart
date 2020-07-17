import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/models/product.dart';
import 'package:travelappextranet/utils/constants.dart';


class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical:  kDefaultPadding/2,
      ),
      // color: Colors.blueAccent,
      height: 100,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 100,
              margin: EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: /*itemIndex.isEven ? kBlueColor : kSecondaryColor*/kwhite,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            // our product image
            Positioned(
              left: 0,
              top: 10,
              bottom: 10,
              child: Container(

                height: 80,
                // image is square but we add extra 20 + 20 padding thats why width is 200
                width: 80,
                  child: CircleAvatar(
                    child: Image.asset(
                      "assets/images/user.png",
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
            ),
            Positioned(
              left: 70,
              right: 5,
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: kDefaultPadding,
                        left: kDefaultPadding,
                        top: kDefaultPadding/2,
                      ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button.apply(fontWeightDelta: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: kDefaultPadding,
                      ),
                      child: Text(
                        product.description,
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
