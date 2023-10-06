import 'dart:developer';

import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a city'),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value){
              log(value);
            },
            decoration:const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32 , horizontal: 16),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter a city name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
