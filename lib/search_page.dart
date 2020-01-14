import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  var cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
            child: Container(
          height: 300,
          width: 300,
          child: FlareActor(
            "assets/WorldSpin.flr",
            animation: "roll",
            fit: BoxFit.contain,
          ),
        )),
        Container(
          padding: EdgeInsets.only(left: 45, right: 45),
          child: Column(
            children: <Widget>[
              Text(
                "Search Weather",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
              Text(
                "Instantly",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Colors.white70, style: BorderStyle.solid)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(color: Colors.blue, style: BorderStyle.solid)),
              hintText: "Enter city",
              hintStyle: TextStyle(color: Colors.white70)),
          style: TextStyle(color: Colors.white70),
          onSaved: (val) => () {},
        ),
      ],
    );
  }
}
