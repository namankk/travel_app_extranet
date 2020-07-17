import 'package:flutter/material.dart';
import 'package:travelappextranet/components/no_data_card.dart';
import 'package:travelappextranet/components/search_box.dart';
import 'package:travelappextranet/models/product.dart';
import 'package:travelappextranet/utils/constants.dart';

import 'category_list.dart';
import 'product_card.dart';

class Body extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Body();
  }

}
class _Body extends State<Body>{
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          //   SearchBox(onChanged: (value) {}),
          CategoryList(
            selectedIndexCallBack: (selectedIndexValue){

              setState(() {
                print(selectedIndexValue.toString());
                selectedIndex=selectedIndexValue;
              });
            },
          ),

          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                selectedIndex==0?No_Data_Card(): ListView.builder(
                  // here we use our demo procuts list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                          builder: (context) => DetailsScreen(
//                            product: products[index],
//                          ),
//                        ),
//                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}