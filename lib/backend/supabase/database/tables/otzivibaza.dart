import '../database.dart';

class OtzivibazaTable extends SupabaseTable<OtzivibazaRow> {
  @override
  String get tableName => 'otzivibaza';

  @override
  OtzivibazaRow createRow(Map<String, dynamic> data) => OtzivibazaRow(data);
}

class OtzivibazaRow extends SupabaseDataRow {
  OtzivibazaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OtzivibazaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get boId => getField<String>('bo_id');
  set boId(String? value) => setField<String>('bo_id', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);
}
