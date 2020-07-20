import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/utils/constants.dart';

import 'UpdateProfile.dart';

class ManageRates extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ManageRates();
  }

}
class _ManageRates extends State<ManageRates>{
  bool isSwitched = false;
  bool isSingle = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text('Manage Rates'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
        Container(
        margin: EdgeInsets.all(kDefaultPadding),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10 / 2,
        ),
        decoration: BoxDecoration(
          color: isSingle?Colors.white.withOpacity(0.4):Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: () {
            setState(() {
              isSingle=true;
            });
          }, child: Text(
          "Single",
          style: TextStyle(color: Colors.white),
        ),

        ),
      ),Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10 / 2,
      ),
      decoration: BoxDecoration(
        color: isSingle?Colors.transparent:Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: FlatButton(
        onPressed: () {
          setState(() {
            isSingle=false;
          });
        },
        child: Text(
          "Bulk",
          style: TextStyle(color: Colors.white),
        ),
      ),
    )
              ],
            ),
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
                  /*Bulk Dates*/
                  Visibility(
                    visible: !isSingle,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding / 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                             decoration: InputDecoration(
                               border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                               hintText: "DD/MM/YYYY"
                             ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15,left: 10),
                            child: Text(
                              "To",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  hintText: "DD/MM/YYYY"
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  /*Single Date*/
                  Visibility(
                    visible: isSingle,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding / 2),
                      child: TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            hintText: "DD/MM/YYYY"
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                         flex: 1,
                          child: Text(
                            "3 Hr :",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  hintText: "Amount",
                                hintStyle: TextStyle()
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            "6 Hr :",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  hintText: "Amount",
                                  hintStyle: TextStyle()
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            "9 Hr :",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  hintText: "Amount",
                                  hintStyle: TextStyle()
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Total Rooms :",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  hintText: "Amount",
                                  hintStyle: TextStyle()
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Rooms Already Sold :",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  hintText: "Amount",
                                  hintStyle: TextStyle()
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Booking Allowed :",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "3 Hr :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                  Text(
                                    "First Check In :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    hintText: "Time",
                                    hintStyle: TextStyle()
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "Last Check Out :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    hintText: "Time",
                                    hintStyle: TextStyle()
                                ),
                              ),
                            ),
                          ],
                        ),

//                        Expanded(
//                          flex: 1,
//                          child: Padding(
//                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                TextField(
//                                  decoration: InputDecoration(
//                                      border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      hintText: "Amount",
//                                      hintStyle: TextStyle()
//                                  ),
//                                ),
//                                TextField(
//                                  decoration: InputDecoration(
//                                      border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      hintText: "Amount",
//                                      hintStyle: TextStyle()
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "6 Hr :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                  Text(
                                    "First Check In :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    hintText: "Time",
                                    hintStyle: TextStyle()
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "Last Check Out :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    hintText: "Time",
                                    hintStyle: TextStyle()
                                ),
                              ),
                            ),
                          ],
                        ),

//                        Expanded(
//                          flex: 1,
//                          child: Padding(
//                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                TextField(
//                                  decoration: InputDecoration(
//                                      border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      hintText: "Amount",
//                                      hintStyle: TextStyle()
//                                  ),
//                                ),
//                                TextField(
//                                  decoration: InputDecoration(
//                                      border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      hintText: "Amount",
//                                      hintStyle: TextStyle()
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "9 Hr :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                  Text(
                                    "First Check In :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    hintText: "Time",
                                    hintStyle: TextStyle()
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "Last Check Out :",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),

                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    hintText: "Time",
                                    hintStyle: TextStyle()
                                ),
                              ),
                            ),
                          ],
                        ),

//                        Expanded(
//                          flex: 1,
//                          child: Padding(
//                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                TextField(
//                                  decoration: InputDecoration(
//                                      border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      hintText: "Amount",
//                                      hintStyle: TextStyle()
//                                  ),
//                                ),
//                                TextField(
//                                  decoration: InputDecoration(
//                                      border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
//                                      hintText: "Amount",
//                                      hintStyle: TextStyle()
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: kDefaultPadding),

                ],
              ),
            ),
        Container(
          margin: EdgeInsets.all(kDefaultPadding),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFCBF1E),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: FlatButton.icon(
              onPressed: () {},
              icon:  Icon(Icons.update),
              label: Text(
                "Update",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
            // ChatAndAddToCart(),
          ],
        ),
      ),
    ));
  }

}