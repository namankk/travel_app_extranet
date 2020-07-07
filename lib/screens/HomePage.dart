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
  PageController _controller=PageController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("HOME"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("My Booking",style: Theme.of(context).textTheme.headline6.apply(color: Colors.white),),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                       borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Text("Pre Booking",style: Theme.of(context).textTheme.headline6.apply(color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      padding: EdgeInsets.all(10.0),
                    )
                  ],
                ),
              ),
        Expanded(
          flex: 1,
          child: PageView(
            controller: _controller,
            children: [
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
        )
            ],
          ),

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
      ),
    );
  }

}