import 'package:flutter/material.dart';
import 'package:learn_flutter_web/util/responsive.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key key,
    this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(),
                Text(
                  'Featured',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: 5),
                Text(
                  'Unique wildlife tours & destinations',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Expanded(
                  child: Text(
                    'Unique wildlife tours & destinations',
                    textAlign: TextAlign.end,
                    style:TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
    );
  }
}
