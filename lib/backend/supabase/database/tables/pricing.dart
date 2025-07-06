import '../database.dart';

class PricingTable extends SupabaseTable<PricingRow> {
  @override
  String get tableName => 'pricing';

  @override
  PricingRow createRow(Map<String, dynamic> data) => PricingRow(data);
}

class PricingRow extends SupabaseDataRow {
  PricingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PricingTable();

  DateTime get periodStart => getField<DateTime>('period_start')!;
  set periodStart(DateTime value) => setField<DateTime>('period_start', value);

  DateTime get periodEnd => getField<DateTime>('period_end')!;
  set periodEnd(DateTime value) => setField<DateTime>('period_end', value);

  double get price11 => getField<double>('price11')!;
  set price11(double value) => setField<double>('price11', value);

  double? get price12 => getField<double>('price12');
  set price12(double? value) => setField<double>('price12', value);

  double? get price13 => getField<double>('price13');
  set price13(double? value) => setField<double>('price13', value);

  double? get price14 => getField<double>('price14');
  set price14(double? value) => setField<double>('price14', value);

  double? get price21 => getField<double>('price21');
  set price21(double? value) => setField<double>('price21', value);

  double? get price22 => getField<double>('price22');
  set price22(double? value) => setField<double>('price22', value);

  double? get price23 => getField<double>('price23');
  set price23(double? value) => setField<double>('price23', value);

  double? get price24 => getField<double>('price24');
  set price24(double? value) => setField<double>('price24', value);

  double? get price31 => getField<double>('price31');
  set price31(double? value) => setField<double>('price31', value);

  double? get price32 => getField<double>('price32');
  set price32(double? value) => setField<double>('price32', value);

  double? get price33 => getField<double>('price33');
  set price33(double? value) => setField<double>('price33', value);

  double? get price34 => getField<double>('price34');
  set price34(double? value) => setField<double>('price34', value);

  int? get age11 => getField<int>('age11');
  set age11(int? value) => setField<int>('age11', value);

  int? get age12 => getField<int>('age12');
  set age12(int? value) => setField<int>('age12', value);

  int? get age21 => getField<int>('age21');
  set age21(int? value) => setField<int>('age21', value);

  int? get age22 => getField<int>('age22');
  set age22(int? value) => setField<int>('age22', value);

  int? get age31 => getField<int>('age31');
  set age31(int? value) => setField<int>('age31', value);

  int? get age32 => getField<int>('age32');
  set age32(int? value) => setField<int>('age32', value);

  int? get age41 => getField<int>('age41');
  set age41(int? value) => setField<int>('age41', value);

  int? get age42 => getField<int>('age42');
  set age42(int? value) => setField<int>('age42', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get boId => getField<String>('bo_id');
  set boId(String? value) => setField<String>('bo_id', value);
}
