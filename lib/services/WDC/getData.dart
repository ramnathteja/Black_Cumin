import 'dart:convert';
import 'package:http/http.dart';

class GroupData {
  Future<List> getGroupData(String url) async {
    try {
      Map<String, String> requestHeaders = {
        'X-M2M-Origin': 'S20170717074825768bp2l',
        'X-M2M-RI': '1234er5',
        'Accept': 'application/json'
      };
      Response response = await get (url, headers: requestHeaders);
      Map data = jsonDecode(response.body);
      List array = data['m2m:agr']['m2m:rsp'];
      return array;
    } catch (e) {
      print('caught exceprtion $e');
      return null;
    }
  }
}
