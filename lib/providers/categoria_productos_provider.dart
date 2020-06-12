import 'package:testapp/preferencias/shared_prefences.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/model/categoriaproductos_model.dart';

PreferenciasUsuario pref = PreferenciasUsuario();

Future<List<Categoriaproducto>> getCategoriaProductos() async{
  final response = await http.post(
      "http://192.168.0.15:8000/api/obtenerCatalogoProductos",
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${pref.token}",
        "Accept": "aplication.json"
      });

  print(response.body);
  return CategoriaproductosFromJson(response.body);
}