import 'package:twitterclone/models/ApiData.dart';
import "package:http/http.dart" as http;

class RemoteService {
  Future<List<Apidata>?> getApidata() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    //This-is-the-get-request
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      //From-model-generated-from-"https://app.quicktype.io/"
      return apidataFromJson(json);
    }
  }
}
