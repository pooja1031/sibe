import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/events_model/events_model.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';

abstract class EventRepository {
  Future<Either<ErrorMsg, EventsModel>> events(
      {required QueryModel queryModel});
}
