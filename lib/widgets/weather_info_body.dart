import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Alexandria',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
              const Text(
                '18',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Column(
                children: [
                  Text('Maxtemp : 24', style: TextStyle(fontSize: 16)),
                  Text('Mintemp : 15', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          const Text(
            'Light Rain',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
