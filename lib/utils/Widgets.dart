import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MyCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyCard();
  }
}

class _MyCard extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(20.0),
      child: Container(
        margin: EdgeInsets.only(left: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Name", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                    Text("Booking Id", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                    Text("Guest Contact-8758988547", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                  child: Text(
                    "Pay at Hotel",
                    style: Theme.of(context).textTheme.caption.apply(color: kgreyDark, fontWeightDelta: 3),
                  ),
                  decoration: BoxDecoration(color: kgreyFill, borderRadius: BorderRadius.all(Radius.circular(2.0))),
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Check-In", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                    Text("11- July-2020 at 12:00hrs", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("Check-Out", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                    Text("11- July-2020 at 15:00hrs", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3)),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                  margin: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "3 hrs",
                    style: Theme.of(context).textTheme.caption.apply(color: kwhite, fontWeightDelta: 3),
                  ),
                  decoration: BoxDecoration(color: kLightBlue, borderRadius: BorderRadius.all(Radius.circular(10.0))),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1, child: Text("1 Room, 2 Guests", style: Theme.of(context).textTheme.bodyText2.apply(color: kdarkBlue, fontWeightDelta: 3))),
                SizedBox(
                  width: 10.0,
                ),
                Flexible(flex: 1, child: Align(alignment: Alignment.centerRight,child: Text("Rs 499", style: Theme.of(context).textTheme.bodyText2.apply(color: kgreyDark, fontWeightDelta: 2)))),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Divider(),
            Center(
              child: Text(
                "Cancelled by customer",
                style: Theme.of(context).textTheme.bodyText1.apply(color: kred, fontWeightDelta: 1),
              ),
            ),
            SizedBox(
            height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
