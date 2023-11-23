import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

void getListagemAPI() {

  http.get(Uri.https('api.themoviedb.org', '/4/list/2'),
  headers: {
    'authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2ZGM0NjZlODc5NTdiMjI5YmI5Mzc0MDc5ZGI2MWZhZiIsInN1YiI6IjY1NWY1NzhjNzA2ZTU2MDBhY2VlYjYwYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.VERDbsIiIh--HTAbbMZ8OzDd_Ny3yv48dGamBJ9Y0jw',
    'content-type': 'application/json;charset=utf-8'
  }
  ).then((Response value) => print(value.body));

}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListagemAPI();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
