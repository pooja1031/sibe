import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/apply_model/apply_model.dart';
import 'package:study_in_banglore/domain/models/apply_model/apply_resp.dart';

abstract class ApplyRepository {
  Future<Either<ErrorMsg, ApplyResp>> apply({required ApplyModel applyModel});
}
