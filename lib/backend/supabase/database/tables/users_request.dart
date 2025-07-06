import '../database.dart';

class UsersRequestTable extends SupabaseTable<UsersRequestRow> {
  @override
  String get tableName => 'users_request';

  @override
  UsersRequestRow createRow(Map<String, dynamic> data) => UsersRequestRow(data);
}

class UsersRequestRow extends SupabaseDataRow {
  UsersRequestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersRequestTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);
}
