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

import 'package:http/http.dart' as http;

Future<void> deleteUser(String userId, String token) async {
  if (token.isEmpty) {
    print('Error: Token is missing');
    return; // Выход, если токен отсутствует
  }

  final url = Uri.parse(
      'https://shwisoaskrnfycwgabfx.supabase.co/functions/v1/deleteUser?userId=$userId');

  try {
    final response = await http.delete(
      url,
      headers: {
        'Authorization': 'Bearer $token', // Передаем токен в заголовке
      },
    );

    if (response.statusCode == 200) {
      print('Аккаунт удалён успешно');
      // Дополнительная логика
    } else {
      print('Ошибка при удалении пользователя: ${response.body}');
      // Логируем тело ответа для диагностики
    }
  } catch (e) {
    print('Ошибка: $e');
  }
}
