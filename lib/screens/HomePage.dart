import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelappextranet/utils/Widgets.dart';
import 'package:travelappextranet/utils/constants.dart';

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
          Text('Upcoming \nBookings',style: Theme.of(context).textTheme.subtitle1.apply(color: kwhite),),
            Text('Booking \nHistory',style: Theme.of(context).textTheme.subtitle1.apply(color: kwhite),)
            ],
        ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: ListView.builder(
                  itemBuilder: (buildcontext ,index){
                    return MyCard();
                  },
                  itemCount: 10),
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
      ),)
    );
  }

}