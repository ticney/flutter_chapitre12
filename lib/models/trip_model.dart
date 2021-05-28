import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import '../../models/activity_model.dart';

class Trip {
  String id;
  String city;
  List<Activity> activities;
  DateTime? date;
  Trip({
    required this.city,
    required this.activities,
    this.date,
  }) : id = UniqueKey().toString();
}
