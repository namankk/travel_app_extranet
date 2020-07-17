import 'package:flutter/material.dart';
import 'package:travelappextranet/components/body.dart';
import 'package:travelappextranet/screens/NotificationScreen.dart';
import 'package:travelappextranet/utils/constants.dart';

import 'PrivacyPolicy.dart';


class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: kPrimaryColor,
      body: Body(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Hotel Name"),
              accountEmail: Text("ashishrawat2911@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? kdarkBlue
                    : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text("My booking"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
              },
            ),
            ListTile(
              leading: Icon(Icons.note_add),
              title: Text("Privacy policy"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationScreen()));
          },
        ),
      ],
    );
  }
}
