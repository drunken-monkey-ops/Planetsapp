import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planetapp/services/Planets_details.dart';
import 'package:planetapp/pages/Detail.dart';
class Card_Planet extends StatelessWidget {
   PlanetDetails planetsdetails;
    bool horizontal;
   Card_Planet(this.planetsdetails, {this.horizontal = true});
  @override
  Widget build(BuildContext context) {
    Widget CardContent() {
      return Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0,right: 90.0),
        constraints: new BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Text(planetsdetails.name, style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              ),
            ),

            Text(planetsdetails.location, style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.0,
              color: Colors.white,
            ),
            ),
            Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 2.0,
              width: 15.0,
            color: Colors.cyan,
            ),
            Row(


              children: <Widget>[
                Expanded(

                  child: Image(
                      image: AssetImage("assets/images/ic_distance.png"),
                      height: 10.0,

                  ),
                ),

                Text(planetsdetails.distance,style: TextStyle(fontFamily: 'Poppins',
                  fontSize: 10.0, fontWeight: FontWeight.w400,color: Colors.white),),

                new Container(width: 5.0),
                Expanded(

                  child: Image(
                    image: AssetImage("assets/images/ic_gravity.png"),
                    height: 10.0,

                  ),
                ),

                Text(planetsdetails.gravity,style: TextStyle(fontFamily: 'Poppins',
                    fontSize: 10.0, fontWeight: FontWeight.w400,color: Colors.white),),

              ],
            )
          ],
        ),
      );
    }
    Widget planetCard () {
      return Container(
        child: CardContent(),
          height: horizontal ? 124.0 : 154.0,
                margin: horizontal?  EdgeInsets.only(left: 46.0): EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color:  Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 12.0,
            offset: new Offset(0.0, 10.0),
          )
        ],
      ),
    );
    }

      Widget planet () {
      return Container(

        margin: EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.topCenter,

        child: Image(
          image: AssetImage(planetsdetails.image),
          height: 100.0,
          width: 100.0,
        ),
      );
    }



    return GestureDetector(
      onTap: horizontal ? () => Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (_, __, ___) =>  DetailPage(planetsdetails),
        transitionsBuilder: (context, animation, secondaryAnimation, child) => new FadeTransition(opacity: animation, child: child),

      )) : null,
      child: Container(

        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: Stack(
          children: <Widget>[

            planetCard(),
            planet(),
          ],
        ),
      ),
    );
  }
}
