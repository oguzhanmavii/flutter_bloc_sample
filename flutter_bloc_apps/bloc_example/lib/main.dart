import 'package:bloc_example/home/home.dart';
import 'package:bloc_example/services/boredService.dart';
import 'package:bloc_example/services/connectivityService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => BoredService(),
            ),
            RepositoryProvider(
              create: (context) => ConnectivityService(),
            )
          ],
          child: const HomePage(),
        ));
  }
}
