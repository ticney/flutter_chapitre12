import 'package:flutter/material.dart';
import '../../models/city_model.dart';
import '../../providers/city_provider.dart';
import '../../views/trip/widgets/trip_activities.dart';
import '../../views/trip/widgets/trip_city_bar.dart';
import 'package:provider/provider.dart';

class TripView extends StatelessWidget {
  static const String routeName = '/trip';

  @override
  Widget build(BuildContext context) {
    final String cityName = (ModalRoute.of(context)!.settings.arguments
        as Map<String, String>)['cityName'] as String;
    final String tripId = (ModalRoute.of(context)!.settings.arguments
        as Map<String, String>)['tripId'] as String;
    final City city = Provider.of<CityProvider>(context, listen: false)
        .getCityByName(cityName);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              TripCityBar(
                city: city,
              ),
              TripActivities(
                tripId: tripId,
              )
            ],
          ),
        ),
      ),
    );
  }
}
