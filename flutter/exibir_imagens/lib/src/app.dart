import 'package:flutter/material.dart';
import 'dart:convert';
import 'widgets/image_list.dart';
import 'models/image_model.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int numeroImagens = 1;
  List<ImageModel> imagens = [];

  void obterImagem() async {
    var url = Uri.https('api.pexels.com', '/v1/search',
      {'query': 'people', 'page': '$numeroImagens', 'per_page': '1'});
    var req = http.Request('get', url);
    req.headers.addAll({
      'Authorization':
          'sEq7ioTJpoNEeuGB0hGgxeCjfRSOcqV79VjwskTPKhYRstHdtT8xYPYj'
    });
    final result = await req.send();
    if (result.statusCode == 200) {
      final response = await http.Response.fromStream(result);
      var respostaJSON = json.decode(response.body);
      var imagem = ImageModel.fromJSON(respostaJSON);
      setState(() {
        imagens.add(imagem);
        numeroImagens++;
      });
      print(imagem);
    } else {
      print('Falhou');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: obterImagem,
          child: const Icon(Icons.add),
        ),
        body: ImageList(imagens),
      ),
    );
  }
}
