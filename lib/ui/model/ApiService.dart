import 'package:yukbelajar/ui/model/DoaModel.dart';
import 'package:http/http.dart' show Client;

class ApiService {
  final String baseUrl = "http://192.168.20.102/yukbelajar/view.php";
  Client doa = Client();

  Future<List<DoaModel>> getDoa() async {
    final response = await doa.get("$baseUrl");
    if (response.statusCode == 200) {
      return DoaFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<List<DoaModel>> getDoaID() async {
    final response = await doa.get("$baseUrl/");
    if (response.statusCode == 200) {
      return DoaFromJson(response.body);
    } else {
      return null;
    }
  }
}
