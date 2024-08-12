import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/apply_college.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/data/data.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_details.dart';
import 'package:study_in_banglore/domain/models/colleges/colleges.model.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_query_model.dart';
import 'package:study_in_banglore/domain/models/colleges/query_college_model.dart';

abstract class CollegesRepository {
  Future<Either<ErrorMsg, Colleges>> getCollege(
      {required QueryCollegeModel queryCollegeModel});
  Future<Either<ErrorMsg, CollegeDetails>> getCollegesDetails(
      {required CollegeQueryModel queryModel});
  Future<Either<ErrorMsg, ApplyCollege>> applyCollege(
      {required QueryApplyModel queryApplyModel});
}
