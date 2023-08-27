import 'package:json_annotation/json_annotation.dart';

part 'num_fact_response.g.dart';

@JsonSerializable()
class NumFactResponse {

  @JsonKey(name: 'text')
  String? triviatext;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumFactResponse({this.triviatext, this.number, this.found, this.type});

  factory NumFactResponse.fromJson(Map<String, dynamic> json) {
    return _$NumFactResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumFactResponseToJson(this);
}
