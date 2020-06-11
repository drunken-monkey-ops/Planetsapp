import 'package:flutter/material.dart';
import 'package:planetapp/services/Planets_details.dart';
import 'package:planetapp/pages/card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: new Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 12.0),
            sliver: SliverList(delegate: SliverChildBuilderDelegate(
                (context,index)=> Card_Planet(planets[index]),
                childCount: planets.length,
            )
            ),
            )
          ],
        ),
      ),
    );
  }
}
