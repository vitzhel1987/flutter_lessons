import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/network/network_service_retrofit.dart';
//import 'package:untitled/data/network_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final gomelLatitude = 52.4345;
    final gomellongitude = 30.9754;
    final apiKey = '3743a9f283c65c509025bf750db75f8e';

    return Scaffold(
      appBar: AppBar(title: const Text('Weather')),
      body: SafeArea(
        child: FutureBuilder(
          future: context.read<NetworkService>().fetchWeather(
            latitude: gomelLatitude,
            longitude: gomellongitude,
            apiKey: apiKey,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            final weather = snapshot.data;

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${weather?.coord?.lon ?? 'no lon'}'),
                  Text('${weather?.coord?.lat ?? 'no lat'}'),
                  Text(weather?.name ?? 'no name'),
                  Text(weather?.weather?.elementAtOrNull(0)?.main ?? 'no main'),
                  Text(
                    weather?.weather?.elementAtOrNull(0)?.description ??
                        'no description',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
