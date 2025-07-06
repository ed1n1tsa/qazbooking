// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemStruct extends BaseStruct {
  ItemStruct({
    String? name,
    int? room,
    bool? like,
    String? zonaa,
    String? url1,
    int? index,
    int? iditem,
    bool? filterbassein,
    bool? filterparking,
    bool? filtertransfer,
    bool? filtercafe,
  })  : _name = name,
        _room = room,
        _like = like,
        _zonaa = zonaa,
        _url1 = url1,
        _index = index,
        _iditem = iditem,
        _filterbassein = filterbassein,
        _filterparking = filterparking,
        _filtertransfer = filtertransfer,
        _filtercafe = filtercafe;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "room" field.
  int? _room;
  int get room => _room ?? 0;
  set room(int? val) => _room = val;

  void incrementRoom(int amount) => room = room + amount;

  bool hasRoom() => _room != null;

  // "like" field.
  bool? _like;
  bool get like => _like ?? false;
  set like(bool? val) => _like = val;

  bool hasLike() => _like != null;

  // "zonaa" field.
  String? _zonaa;
  String get zonaa => _zonaa ?? '';
  set zonaa(String? val) => _zonaa = val;

  bool hasZonaa() => _zonaa != null;

  // "url1" field.
  String? _url1;
  String get url1 => _url1 ?? '';
  set url1(String? val) => _url1 = val;

  bool hasUrl1() => _url1 != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "iditem" field.
  int? _iditem;
  int get iditem => _iditem ?? 0;
  set iditem(int? val) => _iditem = val;

  void incrementIditem(int amount) => iditem = iditem + amount;

  bool hasIditem() => _iditem != null;

  // "filterbassein" field.
  bool? _filterbassein;
  bool get filterbassein => _filterbassein ?? false;
  set filterbassein(bool? val) => _filterbassein = val;

  bool hasFilterbassein() => _filterbassein != null;

  // "filterparking" field.
  bool? _filterparking;
  bool get filterparking => _filterparking ?? false;
  set filterparking(bool? val) => _filterparking = val;

  bool hasFilterparking() => _filterparking != null;

  // "filtertransfer" field.
  bool? _filtertransfer;
  bool get filtertransfer => _filtertransfer ?? false;
  set filtertransfer(bool? val) => _filtertransfer = val;

  bool hasFiltertransfer() => _filtertransfer != null;

  // "filtercafe" field.
  bool? _filtercafe;
  bool get filtercafe => _filtercafe ?? false;
  set filtercafe(bool? val) => _filtercafe = val;

  bool hasFiltercafe() => _filtercafe != null;

  static ItemStruct fromMap(Map<String, dynamic> data) => ItemStruct(
        name: data['name'] as String?,
        room: castToType<int>(data['room']),
        like: data['like'] as bool?,
        zonaa: data['zonaa'] as String?,
        url1: data['url1'] as String?,
        index: castToType<int>(data['index']),
        iditem: castToType<int>(data['iditem']),
        filterbassein: data['filterbassein'] as bool?,
        filterparking: data['filterparking'] as bool?,
        filtertransfer: data['filtertransfer'] as bool?,
        filtercafe: data['filtercafe'] as bool?,
      );

  static ItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'room': _room,
        'like': _like,
        'zonaa': _zonaa,
        'url1': _url1,
        'index': _index,
        'iditem': _iditem,
        'filterbassein': _filterbassein,
        'filterparking': _filterparking,
        'filtertransfer': _filtertransfer,
        'filtercafe': _filtercafe,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'room': serializeParam(
          _room,
          ParamType.int,
        ),
        'like': serializeParam(
          _like,
          ParamType.bool,
        ),
        'zonaa': serializeParam(
          _zonaa,
          ParamType.String,
        ),
        'url1': serializeParam(
          _url1,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'iditem': serializeParam(
          _iditem,
          ParamType.int,
        ),
        'filterbassein': serializeParam(
          _filterbassein,
          ParamType.bool,
        ),
        'filterparking': serializeParam(
          _filterparking,
          ParamType.bool,
        ),
        'filtertransfer': serializeParam(
          _filtertransfer,
          ParamType.bool,
        ),
        'filtercafe': serializeParam(
          _filtercafe,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        room: deserializeParam(
          data['room'],
          ParamType.int,
          false,
        ),
        like: deserializeParam(
          data['like'],
          ParamType.bool,
          false,
        ),
        zonaa: deserializeParam(
          data['zonaa'],
          ParamType.String,
          false,
        ),
        url1: deserializeParam(
          data['url1'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        iditem: deserializeParam(
          data['iditem'],
          ParamType.int,
          false,
        ),
        filterbassein: deserializeParam(
          data['filterbassein'],
          ParamType.bool,
          false,
        ),
        filterparking: deserializeParam(
          data['filterparking'],
          ParamType.bool,
          false,
        ),
        filtertransfer: deserializeParam(
          data['filtertransfer'],
          ParamType.bool,
          false,
        ),
        filtercafe: deserializeParam(
          data['filtercafe'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemStruct &&
        name == other.name &&
        room == other.room &&
        like == other.like &&
        zonaa == other.zonaa &&
        url1 == other.url1 &&
        index == other.index &&
        iditem == other.iditem &&
        filterbassein == other.filterbassein &&
        filterparking == other.filterparking &&
        filtertransfer == other.filtertransfer &&
        filtercafe == other.filtercafe;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        room,
        like,
        zonaa,
        url1,
        index,
        iditem,
        filterbassein,
        filterparking,
        filtertransfer,
        filtercafe
      ]);
}

ItemStruct createItemStruct({
  String? name,
  int? room,
  bool? like,
  String? zonaa,
  String? url1,
  int? index,
  int? iditem,
  bool? filterbassein,
  bool? filterparking,
  bool? filtertransfer,
  bool? filtercafe,
}) =>
    ItemStruct(
      name: name,
      room: room,
      like: like,
      zonaa: zonaa,
      url1: url1,
      index: index,
      iditem: iditem,
      filterbassein: filterbassein,
      filterparking: filterparking,
      filtertransfer: filtertransfer,
      filtercafe: filtercafe,
    );
