import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data/api/api_list.dart';
import '../data/model/api_result_model.dart';

abstract class TicketRepository {
  Future<List<TotalTicketDataModel>> getTicket();
}

class TicketRepositoryImpl implements TicketRepository {
  @override
  Future<List<TotalTicketDataModel>> getTicket() async {
    var response = await http.get(Uri.http(AppStrings.totalTicketUrl), headers: {
      "X-XSRF-TOKEN":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidGVzdEBnbWFpbC5jb20iLCJmdWxsX25hbWUiOiJ0ZXN0IHRlc2V0IiwiaWF0IjoxNjc2NDQ4Mjg2fQ.m0Svu9uxw-_6Lu-acuQB1iHciZY7QcUvnZOHJG4UUtw",
      "userID": "test@gmail.com",
    });
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<TotalTicketDataModel> tickets = TotalTicketDataModel.fromJson(data).data!.dist as List<TotalTicketDataModel>;
      return tickets;
    } else {
      throw Exception();
    }
  }
}
