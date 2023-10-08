import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);

  getWeather({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherServices(Dio()).getCurrentWeather(cityName: cityName);
  }
}
