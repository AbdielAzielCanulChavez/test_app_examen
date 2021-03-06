import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

class PreferenciasUsuario{
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences prefs;

  initPrefs() async{
    WidgetsFlutterBinding.ensureInitialized();
    this.prefs = await SharedPreferences.getInstance();
  }


  get nombre{
    return prefs.getString('nombre') ?? '';
  }
  set nombre(String value){
    prefs.setString('nombre', value);
  }

  get apellido{
    return prefs.getString('ap_paterno') ?? '';
  }
  set apellido(String value){
    prefs.setString('ap_paterno', value);
  }

  get token{
    return prefs.getString('token') ?? '';
  }
  set token(String value){
    prefs.setString('token', value);
  }

  get id{
    return prefs.getInt('id') ?? '';
  }
  set id(int value){
    prefs.setInt('id', value);
  }
}