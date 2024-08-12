import 'package:json_annotation/json_annotation.dart';

part 'apply_model.g.dart';

@JsonSerializable()
class ApplyModel {
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'apply_type')
  String? applyType;

  ApplyModel({this.userId, this.applyType});

  factory ApplyModel.fromJson(Map<String, dynamic> json) {
    return _$ApplyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApplyModelToJson(this);
}
