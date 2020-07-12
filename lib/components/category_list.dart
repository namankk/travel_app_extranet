import 'package:flutter/material.dart';
import 'package:travelappextranet/utils/constants.dart';


// We need statefull widget because we are gonna change some state on our category
class CategoryList extends StatefulWidget {
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
        children: <Widget>[
          InkWell(
            onTap: (){

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
                color: /*index == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    :*/ Colors.transparent,
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
                color: /*index == selectedIndex*/
                   /* ?*/ Colors.white.withOpacity(0.4)
                    /*: Colors.transparent*/,
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
