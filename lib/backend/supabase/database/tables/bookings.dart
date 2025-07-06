import '../database.dart';

class BookingsTable extends SupabaseTable<BookingsRow> {
  @override
  String get tableName => 'bookings';

  @override
  BookingsRow createRow(Map<String, dynamic> data) => BookingsRow(data);
}

class BookingsRow extends SupabaseDataRow {
  BookingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingsTable();

  DateTime? get checkIn => getField<DateTime>('check_in');
  set checkIn(DateTime? value) => setField<DateTime>('check_in', value);

  DateTime? get checkOut => getField<DateTime>('check_out');
  set checkOut(DateTime? value) => setField<DateTime>('check_out', value);

  int? get adults => getField<int>('adults');
  set adults(int? value) => setField<int>('adults', value);

  int? get children => getField<int>('children');
  set children(int? value) => setField<int>('children', value);

  int? get toddlers => getField<int>('toddlers');
  set toddlers(int? value) => setField<int>('toddlers', value);

  int? get infants => getField<int>('infants');
  set infants(int? value) => setField<int>('infants', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  double get prepaid => getField<double>('prepaid')!;
  set prepaid(double value) => setField<double>('prepaid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int get roomId => getField<int>('room_id')!;
  set roomId(int value) => setField<int>('room_id', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get boId => getField<String>('bo_id');
  set boId(String? value) => setField<String>('bo_id', value);
}
