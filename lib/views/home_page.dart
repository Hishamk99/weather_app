import 'package:flutter/material.dart';
import 'package:weather_app/widgets/no_weather_body.dart';

import 'search_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return SearchView();
            }));
          },
          icon: const Icon(Icons.search),
          )
        ],
      ),
      body: const NoWeatherBody(),
    );
  }
}