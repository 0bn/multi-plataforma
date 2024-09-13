import 'package:flutter/material.dart';
import 'dart:convert';
import 'models/image_model.dart';
import 'package:http/http.dart' as http;

class AppState extends State<App>{
int numeroImagens = 0;

void obterImagem() async {
  //uri: uniform resource identifier 
  //contact: 11966543
  //https://google.com
  var url = Uri.https(
    'api.pexels.com',
    '/v1/search',
    {'query': 'people', 'page': '1', 'per_page': '1'}
    );
  var req = http.Request('get', url);
  req.headers.addAll({'Authorization': 
  'sEq7ioTJpoNEeuGB0hGgxeCjfRSOcqV79VjwskTPKhYRstHdtT8xYPYj'});
  final result = await req.send();
  if(result.statusCode == 200){
    final response = await http.Response.fromStream(result);
    var respostaJSON = json.decode(response.body);
    var imagem = ImageModel.fromJSON(respostaJSON);
    print(imagem);
  }
  else{
    print('Falhou');
  }
  
  //future que permite voce ter o resultado futuramente, equivalente ao promise (para requesições externas)
  //then = função callback 
  // req.send().then((result){
  //   if(result.statusCode == 200){
  //     http.Response.fromStream(result).then((response){
  //       var respostaJSON = json.decode(response.body);
  //       var imagem = ImageModel.fromJSON(respostaJSON);
  //       print(imagem);
  //     });
  //   }
  // }); 
}

@override
Widget build(BuildContext context) {
  return  MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: obterImagem,
          child: const Icon(Icons.add),
        ),
        body: Text('$numeroImagens'),
      ),
    );
  }
}

class App extends StatefulWidget{
  const App({super.key});

@override
State<App> createState(){
  return AppState();
  }
}
