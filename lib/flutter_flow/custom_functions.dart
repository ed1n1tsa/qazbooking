import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String formatRoom(
  int number,
  String category,
) {
  return 'Номер $number ($category)';
}

List<DateTime> generateNext90Days() {
  final today = DateTime.now();
  final firstDayOfMonth = DateTime(today.year, today.month, 1);
  return List.generate(
      90, (index) => firstDayOfMonth.add(Duration(days: index)));
}

String? getBookingStatusForCell(
  DateTime cellDate,
  int cellRoomId,
  List<BookingsRow> bookings,
) {
  final cellDateOnly = DateTime(cellDate.year, cellDate.month, cellDate.day);

  for (final booking in bookings) {
    final int roomId = booking.data['room_id'];

    final checkInRaw = booking.data['check_in'];
    final checkOutRaw = booking.data['check_out'];

    // 🛡 Безопасная проверка и парсинг
    DateTime? checkIn;
    DateTime? checkOut;

    try {
      checkIn =
          checkInRaw is DateTime ? checkInRaw : DateTime.parse(checkInRaw);
      checkOut =
          checkOutRaw is DateTime ? checkOutRaw : DateTime.parse(checkOutRaw);
    } catch (e) {
      debugPrint('Ошибка парсинга дат бронирования: $e');
      continue; // скипнуть эту запись, чтобы не крашить
    }

    final checkInDateOnly = DateTime(checkIn.year, checkIn.month, checkIn.day);
    final checkOutDateOnly =
        DateTime(checkOut.year, checkOut.month, checkOut.day);

    if (roomId != cellRoomId) continue;

    if (cellDateOnly == checkInDateOnly) {
      return 'check_in';
    } else if (cellDateOnly == checkOutDateOnly) {
      return 'check_out';
    } else if (cellDateOnly == checkOutDateOnly &&
        cellDateOnly == checkInDateOnly) {
      return 'inout';
    } else if (cellDateOnly.isAfter(checkInDateOnly) &&
        cellDateOnly.isBefore(checkOutDateOnly)) {
      return 'full';
    }
  }

  // 👉 Если нет брони, но это выходной
  if (cellDate.weekday == DateTime.saturday ||
      cellDate.weekday == DateTime.sunday) {
    return 'weekend';
  }

  return null;
}

double? ostatok(
  double? total,
  double? bron,
) {
  if (total != null && bron != null) {
    return total - bron;
  } else {
    return null; // Или 0.0, если ты хочешь, чтобы результат был 0, когда одно из значений равно null
  }
}

DateTime dayBefore(DateTime inputDate) {
  DateTime nextDate = inputDate.add(Duration(days: 1));
  return DateTime(nextDate.year, nextDate.month, nextDate.day); // убираем время
}
