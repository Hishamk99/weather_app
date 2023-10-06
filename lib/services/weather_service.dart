import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  WeatherServices(this.dio);
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '126986aafbd64e2492a150217230610';
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
   Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
