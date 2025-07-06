import '../database.dart';

class RoomsTable extends SupabaseTable<RoomsRow> {
  @override
  String get tableName => 'rooms';

  @override
  RoomsRow createRow(Map<String, dynamic> data) => RoomsRow(data);
}

class RoomsRow extends SupabaseDataRow {
  RoomsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoomsTable();

  int get number => getField<int>('number')!;
  set number(int value) => setField<int>('number', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  int? get beds => getField<int>('beds');
  set beds(int? value) => setField<int>('beds', value);

  bool? get hasWc => getField<bool>('has_wc');
  set hasWc(bool? value) => setField<bool>('has_wc', value);

  bool? get hasAc => getField<bool>('has_ac');
  set hasAc(bool? value) => setField<bool>('has_ac', value);

  bool? get hasFridge => getField<bool>('has_fridge');
  set hasFridge(bool? value) => setField<bool>('has_fridge', value);

  String? get classField => getField<String>('class');
  set classField(String? value) => setField<String>('class', value);

  dynamic get photos => getField<dynamic>('photos');
  set photos(dynamic value) => setField<dynamic>('photos', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get boId => getField<String>('bo_id');
  set boId(String? value) => setField<String>('bo_id', value);
}
