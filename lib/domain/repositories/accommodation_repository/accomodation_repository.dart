import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/accommodation_model/accommodation_model.dart';
import 'package:study_in_banglore/domain/models/accommodation_model/query_accommodation.dart';

abstract class AccomodationRepository {
  Future<Either<ErrorMsg, AccommodationModel>> accommodation({required QueryAccommodation queryModel});
}
