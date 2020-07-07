import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }

}
class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: DefaultTabController(length: 2 ,
        child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("HOME"),
          bottom: TabBar(
        tabs: [
            Icon(Icons.offline_pin),
            Text('data')
            ],
        ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Icon(Icons.youtube_searched_for),
            ),Center(
              child: Text('Text with style'),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Hotel Name"),
                accountEmail: Text("ashishrawat2911@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue
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
      ),)
    );
  }

}