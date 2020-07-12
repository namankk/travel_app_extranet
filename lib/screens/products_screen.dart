import 'package:flutter/material.dart';
import 'package:travelappextranet/components/body.dart';
import 'package:travelappextranet/utils/constants.dart';


class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
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

            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),

            ),
            ListTile(
              leading: Icon(Icons.note_add),
              title: Text("Privacy policy"),

            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),

            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {},
        ),
      ],
    );
  }
}
