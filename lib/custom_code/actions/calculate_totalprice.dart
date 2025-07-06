// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> calculateTotalprice(
  DateTime checkIn,
  DateTime checkOut,
  int roomClass,
  int age1,
  int age2,
  int age3,
  int age4,
  List<PricingRow> pricing,
) async {
  // Add your function code here!
  double totalPrice = 0.0;
  DateTime currentDate = checkIn;

  while (currentDate.isBefore(checkOut)) {
    final pricingRow = pricing.firstWhere(
      (row) =>
          currentDate
              .isAfter(row.periodStart!.subtract(const Duration(days: 1))) &&
          currentDate.isBefore(row.periodEnd!.add(const Duration(days: 1))),
      orElse: () => throw Exception('Нет цен на дату: $currentDate'),
    );

    // Полный список полей
    final priceMap = {
      'price11': pricingRow.price11,
      'price12': pricingRow.price12,
      'price13': pricingRow.price13,
      'price14': pricingRow.price14,
      'price21': pricingRow.price21,
      'price22': pricingRow.price22,
      'price23': pricingRow.price23,
      'price24': pricingRow.price24,
      'price31': pricingRow.price31,
      'price32': pricingRow.price32,
      'price33': pricingRow.price33,
      'price34': pricingRow.price34,
    };

    // Dynamically generated keys for the selected room class
    final adultKey = 'price${roomClass}1';
    final child1Key = 'price${roomClass}2';
    final child2Key = 'price${roomClass}3';
    final child3Key = 'price${roomClass}4';

    // Calculate the daily cost for the room
    double dailyCost = 0.0;
    dailyCost += (priceMap[adultKey] ?? 0) * age1;
    dailyCost += (priceMap[child1Key] ?? 0) * age2;
    dailyCost += (priceMap[child2Key] ?? 0) * age3;
    dailyCost += (priceMap[child3Key] ?? 0) * age4;

    totalPrice += dailyCost;

    // Move to the next day
    currentDate = currentDate.add(const Duration(days: 1));
  }

  return totalPrice;
}
