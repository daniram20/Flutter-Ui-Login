import 'dart:convert';
import 'package:project_uts/json_list/user_model.dart';
import 'package:http/http.dart' as http;
class UserViewModel {

 Future<dynamic> getUsers() async {
    try{
      http.Response hasil = await http.get(
        Uri.parse("http://rismayana.diary-project.com/bio.php?prodi=Teknik%20Informatika"),
        headers: {"Accept": "application/json"});
      if (hasil.statusCode == 200) {
        print("data category success");
        final data = userModelFromJson(hasil.body);
        return data;
      } else {
          print("error status " + hasil.statusCode.toString());
          return null;
        }
      } catch (e) {
      print("error catch $e");
      return null;

    }
  }
}