// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomPhotosStruct extends BaseStruct {
  RoomPhotosStruct({
    String? roomPhotosList,
  }) : _roomPhotosList = roomPhotosList;

  // "roomPhotosList" field.
  String? _roomPhotosList;
  String get roomPhotosList => _roomPhotosList ?? '1';
  set roomPhotosList(String? val) => _roomPhotosList = val;

  bool hasRoomPhotosList() => _roomPhotosList != null;

  static RoomPhotosStruct fromMap(Map<String, dynamic> data) =>
      RoomPhotosStruct(
        roomPhotosList: data['roomPhotosList'] as String?,
      );

  static RoomPhotosStruct? maybeFromMap(dynamic data) => data is Map
      ? RoomPhotosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'roomPhotosList': _roomPhotosList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'roomPhotosList': serializeParam(
          _roomPhotosList,
          ParamType.String,
        ),
      }.withoutNulls;

  static RoomPhotosStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoomPhotosStruct(
        roomPhotosList: deserializeParam(
          data['roomPhotosList'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RoomPhotosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoomPhotosStruct && roomPhotosList == other.roomPhotosList;
  }

  @override
  int get hashCode => const ListEquality().hash([roomPhotosList]);
}

RoomPhotosStruct createRoomPhotosStruct({
  String? roomPhotosList,
}) =>
    RoomPhotosStruct(
      roomPhotosList: roomPhotosList,
    );
