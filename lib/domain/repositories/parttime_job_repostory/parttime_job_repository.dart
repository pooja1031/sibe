import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/parttime_job_model/parttime_job_model.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';

abstract class ParttimeJobRepository {
  Future<Either<ErrorMsg, ParttimeJobModel>> partimeJob(
      {required QueryModel queryModel});
}
