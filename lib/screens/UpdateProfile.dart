import 'package:flutter/material.dart';
import 'package:travelappextranet/utils/constants.dart';


class UpdateProfile extends StatelessWidget {
  const UpdateProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: FlatButton.icon(
          onPressed: () {},
          icon:  Icon(Icons.update),
          label: Text(
            "Update Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
