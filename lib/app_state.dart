import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _propertyItems = prefs
              .getStringList('ff_propertyItems')
              ?.map((x) {
                try {
                  return ItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _propertyItems;
    });
    _safeInit(() {
      _colorred = prefs.getBool('ff_colorred') ?? _colorred;
    });
    _safeInit(() {
      _filterprice1 = prefs.getInt('ff_filterprice1') ?? _filterprice1;
    });
    _safeInit(() {
      _filterprice2 = prefs.getInt('ff_filterprice2') ?? _filterprice2;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _viewguessite = false;
  bool get viewguessite => _viewguessite;
  set viewguessite(bool value) {
    _viewguessite = value;
  }

  List<ItemStruct> _propertyItems = [
    ItemStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Тур\",\"room\":\"3\",\"like\":\"false\",\"zonaa\":\"Акши\",\"url1\":\"https://picsum.photos/seed/736/600\"}')),
    ItemStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Туры\",\"room\":\"2\",\"like\":\"false\",\"zonaa\":\"Кабанбай\",\"url1\":\"https://picsum.photos/seed/960/600\"}'))
  ];
  List<ItemStruct> get propertyItems => _propertyItems;
  set propertyItems(List<ItemStruct> value) {
    _propertyItems = value;
    prefs.setStringList(
        'ff_propertyItems', value.map((x) => x.serialize()).toList());
  }

  void addToPropertyItems(ItemStruct value) {
    propertyItems.add(value);
    prefs.setStringList(
        'ff_propertyItems', _propertyItems.map((x) => x.serialize()).toList());
  }

  void removeFromPropertyItems(ItemStruct value) {
    propertyItems.remove(value);
    prefs.setStringList(
        'ff_propertyItems', _propertyItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPropertyItems(int index) {
    propertyItems.removeAt(index);
    prefs.setStringList(
        'ff_propertyItems', _propertyItems.map((x) => x.serialize()).toList());
  }

  void updatePropertyItemsAtIndex(
    int index,
    ItemStruct Function(ItemStruct) updateFn,
  ) {
    propertyItems[index] = updateFn(_propertyItems[index]);
    prefs.setStringList(
        'ff_propertyItems', _propertyItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPropertyItems(int index, ItemStruct value) {
    propertyItems.insert(index, value);
    prefs.setStringList(
        'ff_propertyItems', _propertyItems.map((x) => x.serialize()).toList());
  }

  bool _viewtur = false;
  bool get viewtur => _viewtur;
  set viewtur(bool value) {
    _viewtur = value;
  }

  bool _vieweda = false;
  bool get vieweda => _vieweda;
  set vieweda(bool value) {
    _vieweda = value;
  }

  bool _colorred = false;
  bool get colorred => _colorred;
  set colorred(bool value) {
    _colorred = value;
    prefs.setBool('ff_colorred', value);
  }

  int _numbooking = 1;
  int get numbooking => _numbooking;
  set numbooking(int value) {
    _numbooking = value;
  }

  DateTime? _arrivaltime = DateTime.fromMillisecondsSinceEpoch(1747411020000);
  DateTime? get arrivaltime => _arrivaltime;
  set arrivaltime(DateTime? value) {
    _arrivaltime = value;
  }

  DateTime? _departuretime = DateTime.fromMillisecondsSinceEpoch(1747411020000);
  DateTime? get departuretime => _departuretime;
  set departuretime(DateTime? value) {
    _departuretime = value;
  }

  bool _viewtransftimes = false;
  bool get viewtransftimes => _viewtransftimes;
  set viewtransftimes(bool value) {
    _viewtransftimes = value;
  }

  DateTime? _datez = DateTime.fromMillisecondsSinceEpoch(1747411020000);
  DateTime? get datez => _datez;
  set datez(DateTime? value) {
    _datez = value;
  }

  DateTime? _datev = DateTime.fromMillisecondsSinceEpoch(1747411020000);
  DateTime? get datev => _datev;
  set datev(DateTime? value) {
    _datev = value;
  }

  bool _vtz = false;
  bool get vtz => _vtz;
  set vtz(bool value) {
    _vtz = value;
  }

  bool _vtv = false;
  bool get vtv => _vtv;
  set vtv(bool value) {
    _vtv = value;
  }

  List<String> _roomPhotosList = [];
  List<String> get roomPhotosList => _roomPhotosList;
  set roomPhotosList(List<String> value) {
    _roomPhotosList = value;
  }

  void addToRoomPhotosList(String value) {
    roomPhotosList.add(value);
  }

  void removeFromRoomPhotosList(String value) {
    roomPhotosList.remove(value);
  }

  void removeAtIndexFromRoomPhotosList(int index) {
    roomPhotosList.removeAt(index);
  }

  void updateRoomPhotosListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    roomPhotosList[index] = updateFn(_roomPhotosList[index]);
  }

  void insertAtIndexInRoomPhotosList(int index, String value) {
    roomPhotosList.insert(index, value);
  }

  List<DateTime> _selectedDates = [];
  List<DateTime> get selectedDates => _selectedDates;
  set selectedDates(List<DateTime> value) {
    _selectedDates = value;
  }

  void addToSelectedDates(DateTime value) {
    selectedDates.add(value);
  }

  void removeFromSelectedDates(DateTime value) {
    selectedDates.remove(value);
  }

  void removeAtIndexFromSelectedDates(int index) {
    selectedDates.removeAt(index);
  }

  void updateSelectedDatesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    selectedDates[index] = updateFn(_selectedDates[index]);
  }

  void insertAtIndexInSelectedDates(int index, DateTime value) {
    selectedDates.insert(index, value);
  }

  List<dynamic> _time = [];
  List<dynamic> get time => _time;
  set time(List<dynamic> value) {
    _time = value;
  }

  void addToTime(dynamic value) {
    time.add(value);
  }

  void removeFromTime(dynamic value) {
    time.remove(value);
  }

  void removeAtIndexFromTime(int index) {
    time.removeAt(index);
  }

  void updateTimeAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    time[index] = updateFn(_time[index]);
  }

  void insertAtIndexInTime(int index, dynamic value) {
    time.insert(index, value);
  }

  int _stoimost = 25000;
  int get stoimost => _stoimost;
  set stoimost(int value) {
    _stoimost = value;
  }

  int _ostatok = 22000;
  int get ostatok => _ostatok;
  set ostatok(int value) {
    _ostatok = value;
  }

  bool _viewwwwww = false;
  bool get viewwwwww => _viewwwwww;
  set viewwwwww(bool value) {
    _viewwwwww = value;
  }

  int _age11 = 0;
  int get age11 => _age11;
  set age11(int value) {
    _age11 = value;
  }

  int _age22 = 0;
  int get age22 => _age22;
  set age22(int value) {
    _age22 = value;
  }

  int _age21 = 0;
  int get age21 => _age21;
  set age21(int value) {
    _age21 = value;
  }

  int _age12 = 0;
  int get age12 => _age12;
  set age12(int value) {
    _age12 = value;
  }

  int _age31 = 0;
  int get age31 => _age31;
  set age31(int value) {
    _age31 = value;
  }

  int _age32 = 0;
  int get age32 => _age32;
  set age32(int value) {
    _age32 = value;
  }

  int _age41 = 0;
  int get age41 => _age41;
  set age41(int value) {
    _age41 = value;
  }

  int _age42 = 0;
  int get age42 => _age42;
  set age42(int value) {
    _age42 = value;
  }

  String _id = '';
  String get id => _id;
  set id(String value) {
    _id = value;
  }

  String _adminid = '';
  String get adminid => _adminid;
  set adminid(String value) {
    _adminid = value;
  }

  String _unqkey = '12354567896465';
  String get unqkey => _unqkey;
  set unqkey(String value) {
    _unqkey = value;
  }

  String _key2 = '56498784651054';
  String get key2 => _key2;
  set key2(String value) {
    _key2 = value;
  }

  String _key3 = '567498786465165';
  String get key3 => _key3;
  set key3(String value) {
    _key3 = value;
  }

  String _key4 = '545646548841';
  String get key4 => _key4;
  set key4(String value) {
    _key4 = value;
  }

  String _key5 = '56489465123189';
  String get key5 => _key5;
  set key5(String value) {
    _key5 = value;
  }

  String _boid = '';
  String get boid => _boid;
  set boid(String value) {
    _boid = value;
  }

  String _bereg = 'Левый';
  String get bereg => _bereg;
  set bereg(String value) {
    _bereg = value;
  }

  DateTime? _timeaddc = DateTime.fromMillisecondsSinceEpoch(1748934000000);
  DateTime? get timeaddc => _timeaddc;
  set timeaddc(DateTime? value) {
    _timeaddc = value;
  }

  String _tur = '';
  String get tur => _tur;
  set tur(String value) {
    _tur = value;
  }

  String _otd = '';
  String get otd => _otd;
  set otd(String value) {
    _otd = value;
  }

  String _filterzone = '';
  String get filterzone => _filterzone;
  set filterzone(String value) {
    _filterzone = value;
  }

  int _filterprice1 = 99;
  int get filterprice1 => _filterprice1;
  set filterprice1(int value) {
    _filterprice1 = value;
    prefs.setInt('ff_filterprice1', value);
  }

  int _filterprice2 = 999999;
  int get filterprice2 => _filterprice2;
  set filterprice2(int value) {
    _filterprice2 = value;
    prefs.setInt('ff_filterprice2', value);
  }

  bool _filterdets = true;
  bool get filterdets => _filterdets;
  set filterdets(bool value) {
    _filterdets = value;
  }

  int _filterudalennost = 0;
  int get filterudalennost => _filterudalennost;
  set filterudalennost(int value) {
    _filterudalennost = value;
  }

  int _filterUdalennostQ = 0;
  int get filterUdalennostQ => _filterUdalennostQ;
  set filterUdalennostQ(int value) {
    _filterUdalennostQ = value;
  }

  int _filterb = 0;
  int get filterb => _filterb;
  set filterb(int value) {
    _filterb = value;
  }

  int _filterd = 0;
  int get filterd => _filterd;
  set filterd(int value) {
    _filterd = value;
  }

  int _filterc = 0;
  int get filterc => _filterc;
  set filterc(int value) {
    _filterc = value;
  }

  int _filtert = 0;
  int get filtert => _filtert;
  set filtert(int value) {
    _filtert = value;
  }

  int _filterp = 0;
  int get filterp => _filterp;
  set filterp(int value) {
    _filterp = value;
  }

  int _roomid = 0;
  int get roomid => _roomid;
  set roomid(int value) {
    _roomid = value;
  }

  List<String> _filterbereg = ['Левый', 'Правый'];
  List<String> get filterbereg => _filterbereg;
  set filterbereg(List<String> value) {
    _filterbereg = value;
  }

  void addToFilterbereg(String value) {
    filterbereg.add(value);
  }

  void removeFromFilterbereg(String value) {
    filterbereg.remove(value);
  }

  void removeAtIndexFromFilterbereg(int index) {
    filterbereg.removeAt(index);
  }

  void updateFilterberegAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    filterbereg[index] = updateFn(_filterbereg[index]);
  }

  void insertAtIndexInFilterbereg(int index, String value) {
    filterbereg.insert(index, value);
  }

  List<String> _leviy = ['Левый', 'Левый'];
  List<String> get leviy => _leviy;
  set leviy(List<String> value) {
    _leviy = value;
  }

  void addToLeviy(String value) {
    leviy.add(value);
  }

  void removeFromLeviy(String value) {
    leviy.remove(value);
  }

  void removeAtIndexFromLeviy(int index) {
    leviy.removeAt(index);
  }

  void updateLeviyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    leviy[index] = updateFn(_leviy[index]);
  }

  void insertAtIndexInLeviy(int index, String value) {
    leviy.insert(index, value);
  }

  List<String> _pravy = ['Правый', 'Правый'];
  List<String> get pravy => _pravy;
  set pravy(List<String> value) {
    _pravy = value;
  }

  void addToPravy(String value) {
    pravy.add(value);
  }

  void removeFromPravy(String value) {
    pravy.remove(value);
  }

  void removeAtIndexFromPravy(int index) {
    pravy.removeAt(index);
  }

  void updatePravyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pravy[index] = updateFn(_pravy[index]);
  }

  void insertAtIndexInPravy(int index, String value) {
    pravy.insert(index, value);
  }

  List<String> _obshi = ['Левый', 'Правый'];
  List<String> get obshi => _obshi;
  set obshi(List<String> value) {
    _obshi = value;
  }

  void addToObshi(String value) {
    obshi.add(value);
  }

  void removeFromObshi(String value) {
    obshi.remove(value);
  }

  void removeAtIndexFromObshi(int index) {
    obshi.removeAt(index);
  }

  void updateObshiAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    obshi[index] = updateFn(_obshi[index]);
  }

  void insertAtIndexInObshi(int index, String value) {
    obshi.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
