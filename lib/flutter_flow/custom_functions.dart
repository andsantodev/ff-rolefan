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
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String maxLimitCharacters(
  String text,
  int limit,
) {
  String maxLimitCharacters =
      text.length > limit ? '${text.substring(0, limit)}...' : text;
  return maxLimitCharacters;
}

bool isSavedRestaurantInList(
  int idRestaurantes,
  List<FavoritosRow> favoritos,
) {
  for (var favourite in favoritos) {
    if (favourite.idRestaurantes == idRestaurantes) {
      return true;
    }
  }
  return false;
}

DateTime stringToDateTime(String dateString) {
  // Formato esperado da data no banco de dados
  DateFormat format = DateFormat('yyyy-MM-dd');

  // Parse da string para DateTime
  DateTime dateTime = format.parse(dateString);

  // Converter para o fuso horário brasileiro (GMT-3)
  dateTime = dateTime.toLocal();

  return dateTime;
}

DateTime stringToTime(String timeString) {
// Formato esperado do horário no banco de dados
  DateFormat format = DateFormat('HH:mm:ss+00');

  // Parse da string para DateTime
  DateTime dateTime = format.parse(timeString);

  // Converter para o fuso horário local (automaticamente ajusta para GMT-3 no Brasil)
  dateTime = dateTime.toLocal();

  return dateTime;
}

bool isSavedEventInList(
  int idEventos,
  List<FavoritosRow> favoritos,
) {
  for (var favourite in favoritos) {
    if (favourite.idEventos == idEventos) {
      return true;
    }
  }
  return false;
}

List<LatLng> convertStringsToLatLngList(List<String> strings) {
  List<LatLng> latLngList = [];
  for (String s in strings) {
    final match = RegExp(r'LatLng\(lat: (.*), lng: (.*)\)').firstMatch(s);
    if (match != null) {
      double lat = double.parse(match.group(1)!);
      double lng = double.parse(match.group(2)!);
      latLngList.add(LatLng(lat, lng));
    }
  }

  return latLngList;
}

LatLng strtoLatLngAPAGAR(String local) {
  final match = RegExp(r'LatLng\(lat: (.*), lng: (.*)\)').firstMatch(local);
  if (match != null) {
    double lat = double.parse(match.group(1)!);
    double lng = double.parse(match.group(2)!);
    return LatLng(lat, lng); // Corrigindo a ordem para lat, lng
  } else {
    return LatLng(0, 0);
  }
}

LatLng convertOneStringToLatLngList(String string) {
  final match = RegExp(r'LatLng\(lat: (.*), lng: (.*)\)').firstMatch(string);
  if (match != null) {
    double lat = double.parse(match.group(1)!);
    double lng = double.parse(match.group(2)!);
    return LatLng(lat, lng);
  } else {
    throw FormatException('String does not match the expected format.');
  }
}

String capitalizeWeekday(String dateString) {
// Função que converte string para DateTime
  DateTime stringToDateTime(String dateString) {
    // Formato esperado da data no banco de dados
    DateFormat format = DateFormat('yyyy-MM-dd');

    // Parse da string para DateTime
    DateTime dateTime = format.parse(dateString);

    // Converter para o fuso horário brasileiro (GMT-3)
    dateTime = dateTime.toLocal();

    return dateTime;
  }

  // Lista de dias da semana em português
  const List<String> weekdays = [
    'Dom',
    'Seg',
    'Ter',
    'Qua',
    'Qui',
    'Sex',
    'Sáb'
  ];

  // Converte a string para DateTime
  DateTime date = stringToDateTime(dateString);

  // Formata a data
  final String formattedDate =
      '${weekdays[date.weekday % 7]}. ${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}';

  return formattedDate;
}

DateTime? stringToBirthDate(String dateString) {
  try {
    // Formato esperado: 'dd/MM/yyyy'
    final dateFormat = DateFormat('dd/MM/yyyy');
    return dateFormat.parse(dateString);
  } catch (e) {
    return null;
  }
}

String extractCity(String address) {
// Verifica se o endereço contém um traço seguido de uma vírgula
  int dashIndex = address.indexOf('-');
  if (dashIndex != -1) {
    // Encontra a parte após o traço
    String afterDash = address.substring(dashIndex + 1).trim();

    // Encontra a primeira vírgula após o traço
    int commaIndex = afterDash.indexOf(',');

    if (commaIndex != -1) {
      // A cidade está logo após o bairro e a vírgula
      String city = afterDash.substring(commaIndex + 1).split('-')[0].trim();
      return city;
    }
  }
  return address;
}

String getFirstName(String fullName) {
  if (fullName.isEmpty) {
    return '';
  }
  return fullName.split(' ')[0];
}

String extractAddressUntilNeighborhood(String address) {
// Encontra a posição do primeiro traço
  int firstDashIndex = address.indexOf('-');

  if (firstDashIndex != -1) {
    // Extrai a parte do endereço até o primeiro traço
    String truncatedAddress = address.substring(0, firstDashIndex).trim();

    // Agora encontra a próxima vírgula após o traço (para capturar o bairro)
    int commaIndex = address.indexOf(',', firstDashIndex);

    if (commaIndex != -1) {
      // Junta a parte até o primeiro traço com o bairro
      truncatedAddress += address.substring(firstDashIndex, commaIndex).trim();
    } else {
      // Se não encontrar a vírgula, retorne a parte até o primeiro traço
      return truncatedAddress;
    }

    return truncatedAddress;
  }

  // Se não houver traço, retorna o endereço completo
  return address;
}

String formatDateToBrazilian(String date) {
// Divida a string da data em partes: ano, mês e dia
  List<String> parts = date.split('-');

  // Verifique se a data tem três partes (ano, mês, dia)
  if (parts.length == 3) {
    String year = parts[0];
    String month = parts[1];
    String day = parts[2];

    // Retorna a data no formato brasileiro dd/mm/aaaa
    return '$day/$month/$year';
  }

  // Retorna a data original se não estiver no formato esperado
  return date;
}

String geoToString(
  LatLng location,
  bool isLat,
) {
  if (isLat) {
    return location.latitude.toString();
  } else {
    return location.longitude.toString();
  }
}

String extractNeighborhood(String address) {
// Encontra a posição do primeiro traço
  int firstDashIndex = address.indexOf('-');

  if (firstDashIndex != -1) {
    // Agora encontra a próxima vírgula após o traço (para capturar o bairro)
    int commaIndex = address.indexOf(',', firstDashIndex);

    if (commaIndex != -1) {
      // Extrai a parte entre o traço e a vírgula, removendo espaços em branco
      String neighborhood =
          address.substring(firstDashIndex + 1, commaIndex).trim();
      return neighborhood;
    }
  }

  // Se não encontrar o traço ou a vírgula, retorna o endereço completo
  return address;
}

double longitude(String latLngString) {
// Regex para extrair a longitude da string.
  final lngMatch = RegExp(r'lng: (.*)\)').firstMatch(latLngString);

  // Verificar se a longitude foi encontrada.
  if (lngMatch != null && lngMatch.group(1) != null) {
    // Converter a longitude para double e retornar.
    return double.parse(lngMatch.group(1)!);
  } else {
    throw FormatException("Longitude não encontrada ou formato inválido.");
  }
}

double latitude(String latLngString) {
  final latMatch = RegExp(r'lat: (.*),').firstMatch(latLngString);

  // Verificar se a latitude foi encontrada.
  if (latMatch != null && latMatch.group(1) != null) {
    // Converter a latitude para double e retornar.
    return double.parse(latMatch.group(1)!);
  } else {
    throw FormatException("Latitude não encontrada ou formato inválido.");
  }
}

LatLng makeLatLng(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

bool isScreenHeightReduced(
  double currentHeight,
  double originalHeight,
) {
// Retorna true se a altura da tela foi reduzida (indicando que o teclado está aberto)
  return currentHeight < originalHeight * 0.85;
}
