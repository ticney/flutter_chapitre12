import 'package:flutter/material.dart';
import '../../../models/city_model.dart';

class TripCityBar extends StatelessWidget {
  final City city;

  TripCityBar({required this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            city.image,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black38,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 10,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      city.name,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
