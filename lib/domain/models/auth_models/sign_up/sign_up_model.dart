import 'package:json_annotation/json_annotation.dart';
part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel {
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'phone_number')
  String? phnNum;

  SignUpModel({
    this.firstName,
    this.lastName,
    this.phnNum,
  });
  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
