import 'package:flutter/material.dart';
import 'package:travelappextranet/models/product.dart';
import 'package:travelappextranet/utils/constants.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
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
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 200,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: /*itemIndex.isEven ? kBlueColor : kSecondaryColor*/kwhite,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
//            Positioned(
//              top: 30,
//              right: 0,
//              child: Container(
//                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                height: 200,
//                // image is square but we add extra 20 + 20 padding thats why width is 200
//                width: 200,
//child: Text("Pay at hotel"),
////                  child: Image.asset(
////                    product.image,
////                    fit: BoxFit.cover,
////                  ),
//              ),
//            ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 200,
                // our image take 200 width, thats why we set out total width - 200
              /*  width: size.width - 200,*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.description,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        "Check-In",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.checkInTime,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        "Check-Out",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.checkInTime,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    // it use the available space
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5, // 30 padding
                        vertical: kDefaultPadding / 4, // 5 top and bottom
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "\$${product.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child:  Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 1.5, // 30 padding
                  vertical: kDefaultPadding / 4, // 5 top and bottom
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: Text(
                  "Pat at Hotel",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.5, // 30 padding
                  vertical: kDefaultPadding / 5, // 5 top and bottom
                ),
                decoration: BoxDecoration(
                  color: kLightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Text(
                  "3 hrs",
                  style: Theme.of(context).textTheme.button.apply(color: kwhite),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
