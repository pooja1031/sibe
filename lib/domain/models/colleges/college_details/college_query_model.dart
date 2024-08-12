import 'package:freezed_annotation/freezed_annotation.dart';
part 'college_query_model.g.dart';

@JsonSerializable()
class CollegeQueryModel {
  @JsonKey(name: 'college_id')
  final int? id;

  CollegeQueryModel({this.id});

  factory CollegeQueryModel.fromJson(Map<String, dynamic> json) =>
      _$CollegeQueryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CollegeQueryModelToJson(this);
}
