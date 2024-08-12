import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/query_search_model/query_search_model.dart';
import 'package:study_in_banglore/domain/models/universities/universities.model.dart';

abstract class UniversitiesRepository {
  Future<Either<ErrorMsg, Universities>> universities(
      {required QuerySearchModel queryModel});
}
