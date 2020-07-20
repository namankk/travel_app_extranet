import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/components/notification_card.dart';
import 'package:travelappextranet/models/product.dart';

import 'details_screen.dart';

class NotificationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationScreen();
  }

}
class _NotificationScreen extends State<NotificationScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        // here we use our demo procuts list
        itemCount: notifications.length,
        itemBuilder: (context, index) => NotificationCard(
          itemIndex: index,
          product: notifications[index],
          press: () {

          },
        ),
      ),
    ));
  }

}