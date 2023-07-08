import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '68C0F12C-04A9-469B-8995-C5C920C5205A';
const coinapiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    String url = '$coinapiURL/BTC/$selectedCurrency?apikey=$apiKey';

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];

      return lastPrice;
    } else {
      print(response.statusCode);

      if (response.statusCode == 429) {
        print('Превышен суточный лимит запросов!');
      }

      throw 'Problem with the get request';
    }
  }
}
