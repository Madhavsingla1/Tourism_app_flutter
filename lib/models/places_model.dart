import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_model.freezed.dart';
part 'places_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const PlaceModel._();
  const factory PlaceModel({
    required String ImageUrl,
    required String Name,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);

  factory PlaceModel.fromsnap(DocumentSnapshot snap) {
    var data = snap.data() as Map<String, dynamic>;
    return PlaceModel(
      ImageUrl: data['ImageUrl'],
      Name: data['NameofBeaches'],
    );
  }
}
