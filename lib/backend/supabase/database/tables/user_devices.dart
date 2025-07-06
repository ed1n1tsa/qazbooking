import '../database.dart';

class UserDevicesTable extends SupabaseTable<UserDevicesRow> {
  @override
  String get tableName => 'user_devices';

  @override
  UserDevicesRow createRow(Map<String, dynamic> data) => UserDevicesRow(data);
}

class UserDevicesRow extends SupabaseDataRow {
  UserDevicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserDevicesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get notificationToken => getField<String>('notification_token');
  set notificationToken(String? value) =>
      setField<String>('notification_token', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
