import '../database.dart';

class BazaotdihaTable extends SupabaseTable<BazaotdihaRow> {
  @override
  String get tableName => 'bazaotdiha';

  @override
  BazaotdihaRow createRow(Map<String, dynamic> data) => BazaotdihaRow(data);
}

class BazaotdihaRow extends SupabaseDataRow {
  BazaotdihaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BazaotdihaTable();

  String get adminId => getField<String>('admin_id')!;
  set adminId(String value) => setField<String>('admin_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get nameBo => getField<String>('name_bo');
  set nameBo(String? value) => setField<String>('name_bo', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get statud => getField<bool>('statud');
  set statud(bool? value) => setField<bool>('statud', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get zona => getField<String>('zona');
  set zona(String? value) => setField<String>('zona', value);

  int? get udalennost => getField<int>('udalennost');
  set udalennost(int? value) => setField<int>('udalennost', value);

  String? get storona => getField<String>('storona');
  set storona(String? value) => setField<String>('storona', value);

  int? get udalennostQ => getField<int>('udalennostQ');
  set udalennostQ(int? value) => setField<int>('udalennostQ', value);

  int? get bassein => getField<int>('bassein');
  set bassein(int? value) => setField<int>('bassein', value);

  int? get detsP => getField<int>('detsP');
  set detsP(int? value) => setField<int>('detsP', value);

  int? get cafe => getField<int>('cafe');
  set cafe(int? value) => setField<int>('cafe', value);

  int? get parking => getField<int>('parking');
  set parking(int? value) => setField<int>('parking', value);

  int? get transfer => getField<int>('transfer');
  set transfer(int? value) => setField<int>('transfer', value);

  List<String> get photo => getListField<String>('photo');
  set photo(List<String>? value) => setListField<String>('photo', value);
}
