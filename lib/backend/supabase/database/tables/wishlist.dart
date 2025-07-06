import '../database.dart';

class WishlistTable extends SupabaseTable<WishlistRow> {
  @override
  String get tableName => 'Wishlist';

  @override
  WishlistRow createRow(Map<String, dynamic> data) => WishlistRow(data);
}

class WishlistRow extends SupabaseDataRow {
  WishlistRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WishlistTable();

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
