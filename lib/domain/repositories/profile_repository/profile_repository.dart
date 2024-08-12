import 'package:dartz/dartz.dart';
import 'package:study_in_banglore/domain/core/constant/error_msg.dart';
import 'package:study_in_banglore/domain/models/profile_model/profile_model.dart';

abstract class ProfileRepository {
  Future<Either<ErrorMsg, ProfileModel>> profile();
}
