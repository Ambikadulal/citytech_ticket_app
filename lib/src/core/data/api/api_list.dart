// import 'dart:convert' as convert;
//
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
//
// void fetchData(List<String> arguments) async {
//   var userId = "test@gmail.com";
//   var baseUrl = Uri.https("https://dev.citytech.global/web-api/finpos-dev-mobile-support-backend/");
//   var totalTicketUrl = Uri.https('$baseUrl v1/mobile-support/tickets/all-tickets-details');
//   var myTicketUrl = Uri.https('v1/mobile-support/tickets/my-tickets-details/$userId');
//
//   // Await the http get response, then decode the json-formatted response.
//   var response = await http.get(totalTicketUrl);
//   if (response.statusCode == 200) {
//     var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
//     var itemCount = jsonResponse['getAllTickets'];
//     if (kDebugMode) {
//       print('Number of ticket $itemCount.');
//     }
//   } else {
//     if (kDebugMode) {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }
// }

class AppStrings {
  static String baseUrl = "https://dev.citytech.global/web-api/finpos-dev-mobile-support-backend/";
  static String totalTicketUrl =
      'https://dev.citytech.global/web-api/finpos-dev-mobile-support-backend/v1/mobile-support/tickets/all-tickets-details';
  static String myTicketUrl =
      'https://dev.citytech.global/web-api/finpos-dev-mobile-support-backend/v1/mobile-support/tickets/my-tickets-details/test@gmail.com';
}
