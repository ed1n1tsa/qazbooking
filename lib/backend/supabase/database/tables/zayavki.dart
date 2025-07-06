import '../database.dart';

class ZayavkiTable extends SupabaseTable<ZayavkiRow> {
  @override
  String get tableName => 'zayavki';

  @override
  ZayavkiRow createRow(Map<String, dynamic> data) => ZayavkiRow(data);
}

class ZayavkiRow extends SupabaseDataRow {
  ZayavkiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZayavkiTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get zone => getField<String>('zone');
  set zone(String? value) => setField<String>('zone', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  List<String> get img1 => getListField<String>('img1');
  set img1(List<String>? value) => setListField<String>('img1', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
