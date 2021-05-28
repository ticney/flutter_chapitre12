import 'package:flutter/material.dart';
import '../../../models/activity_model.dart';
import '../../../views/trip/widgets/trip_activity_list.dart';

class TripActivities extends StatelessWidget {
  final String tripId;

  TripActivities({required this.tripId});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              child: TabBar(
                indicatorColor: Colors.blue[100],
                tabs: <Widget>[
                  Tab(
                    text: 'En cours',
                  ),
                  Tab(
                    text: 'Terminé',
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  TripActivityList(
                    tripId: tripId,
                    filter: ActivityStatus.ongoing,
                  ),
                  TripActivityList(
                    tripId: tripId,
                    filter: ActivityStatus.done,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
