import 'package:flutter/material.dart';
import 'package:travelappextranet/utils/constants.dart';


// We need statefull widget because we are gonna change some state on our category
class CategoryList extends StatefulWidget {
  Function selectedIndexCallBack;

  CategoryList({this.selectedIndexCallBack});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = ['Upcoming\nBookings', 'Booking\nHistory'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: (){
              widget.selectedIndexCallBack.call(0);
              setState(() {
                selectedIndex=0;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: kDefaultPadding,
                // At end item it add extra 20 right  padding
                right: /*index == categories.length - 1 ? kDefaultPadding :*/ kDefaultPadding,
              ),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: 0 == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                categories[0],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              widget.selectedIndexCallBack.call(1);
              setState(() {
                selectedIndex=1;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: kDefaultPadding,
                // At end item it add extra 20 right  padding
                right: /*index ==*/ /*categories.length - 1 ? */kDefaultPadding /*: 0,*/
              ),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: 1 == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                categories[1],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      )
    );
  }
}
