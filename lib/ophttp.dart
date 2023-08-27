import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_demo/num_fact_response/num_fact_response.dart';

Future<NumFactResponse> getmunberfact({required int number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
     final jsonbody= jsonDecode(_response.body)as Map<String,dynamic>;
     final numfactresp=NumFactResponse.fromJson(jsonbody);
  return numfactresp;
}
