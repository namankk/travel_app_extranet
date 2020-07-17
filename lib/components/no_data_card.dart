import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class No_Data_Card extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _No_Data_Card();
  }

}
class _No_Data_Card extends State<No_Data_Card>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image.asset("assets/images/nodata2.png",height: 200,),
          Text("No Data available",style: Theme.of(context).textTheme.subtitle1.apply(fontSizeDelta: 5),),
        ],
      ),
    );
  }

}