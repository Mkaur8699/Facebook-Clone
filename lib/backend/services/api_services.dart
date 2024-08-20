// import 'dart:convert' as convert;
// import 'package:myfacebook/backend/services/api_constants.dart';
// import 'package:myfacebook/models/user_post_data.dart';
// import 'package:http/http.dart' as http;
//
// class ApiServices{
//   Future<List<UserPostModel>> getUserPostModel() async{
//
//     try {
//       var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.endPoint);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         var jsonResponse = convert.jsonDecode(response.body) as List<
//             UserPostModel>;
//         return jsonResponse;
//       }
//     }
//     catch(e){
//      print(e.toString());
//     }
//   }
// }