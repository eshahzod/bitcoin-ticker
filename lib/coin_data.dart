import 'package:http/http.dart';
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'D68E300D-2198-49C6-9543-1CC9F19DD9C6';

class CoinData {
  Future getData({String? selectedCurrency, String? selectedCoin}) async {
    var response = await get(Uri.parse(
        '$coinAPIURL/$selectedCoin/$selectedCurrency?apikey=$apiKey'));

    String data = response.body;
    return jsonDecode(data)['rate'];
  }
}
