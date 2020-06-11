import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:planetapp/services/Planets_details.dart';
class DetailPage extends StatefulWidget {

  PlanetDetails planets;
  DetailPage(this.planets);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String Overview = "OverView".toUpperCase();
//bool _visible = true;


  @override
  Widget build(BuildContext context) {

    Container getBackground(){
      return Container(
        child: Image.network(widget.planets.picture, fit:  BoxFit.cover, height: 300.0,),
        constraints: new BoxConstraints.expand(height: 300.0),

      );

    }
    Container getgradient(){
      return new Container(
        margin: new EdgeInsets.only(top: 190.0),
        height: 110.0,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: <Color>[
              new Color(0x00736AB7),
              new Color(0xFF736AB7)
            ],
            stops: [0.0, 0.9],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
          ),
        ),
      );

    }
    Widget getContent() {
      return Container(

         child: ListView(
              controller: ScrollController(

              ),
              padding: new EdgeInsets.fromLTRB(10.0, 400, 0.0, 32.0),
              children: <Widget>[

                Container(height: 50.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        Overview,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 2.0,
                        width: 18.0,
                        color: Colors.cyan,
                      ),

                      Text(
                        widget.planets.description,
                        style:TextStyle(fontFamily: 'Poppins',
                            fontSize: 18.0, fontWeight: FontWeight.w400,color: Colors.white),
                      )
                    ],

                  ),
                )
              ],
            ),
          );

    }

    Widget CardContent() {
      return Container(
        margin: const EdgeInsets.only(top: 40.0, left: 72.0,right: 72.0),
        constraints: new BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[

            Text(widget.planets.name, style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            ),

            Text(widget.planets.location, style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.0,
              color: Colors.white,
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 2.0,
              width: 25.0,
              color: Colors.cyan,
            ),
            Row(


              children: <Widget>[
                Expanded(

                  child: Image(
                    image: AssetImage("assets/images/ic_distance.png"),
                    height: 15.0,

                  ),
                ),

                Text(widget.planets.distance,style: TextStyle(fontFamily: 'Poppins',
                    fontSize: 15.0, fontWeight: FontWeight.w400,color: Colors.white),),

                new Container(width: 12.0),
                Expanded(

                  child: Image(
                    image: AssetImage("assets/images/ic_gravity.png"),
                    height: 15.0,

                  ),
                ),

                Text(widget.planets.gravity,style: TextStyle(fontFamily: 'Poppins',
                    fontSize: 15.0, fontWeight: FontWeight.w400,color: Colors.white),),

              ],
            )
          ],
        ),
      );
    }
    Widget planetCard () {
      return Container(
        child: CardContent(),
        height:  154.0,
        width: 500.0,
        margin:  EdgeInsets.only(top: 250.0,left: 20.0,right: 20.0),
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
          vertical: 200.0,
        ),
        alignment:  FractionalOffset.topCenter,

        child: Image(
          image: AssetImage(widget.planets.image),
          height: 100.0,
          width: 100.0,
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(color:Colors.white),
        backgroundColor: Colors.transparent,
      ),
      body: Container(

        constraints: BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: Stack(

          children: <Widget>[
            getBackground(),
            getgradient(),
            getContent(),
            planetCard(),
            planet(),

          ],
        ),
      ),
    );

  }
}
