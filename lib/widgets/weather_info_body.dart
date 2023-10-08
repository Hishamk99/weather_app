import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Text(
            'Updated at 1:45',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/cloudy.png'),
              Text(
                weatherModel.temp.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Column(
                children: [
                  Text('Maxtemp : 24', style: TextStyle(fontSize: 16)),
                  Text('Mintemp : 15', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          Text(
            weatherModel.condition,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
