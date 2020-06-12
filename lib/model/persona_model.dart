import 'dart:convert';

Persona personaFromJson(String str) => Persona.fromJson(json.decode(str));

String personaToJson(Persona data) => json.encode(data.toJson());

class Persona {
  int id;
  String ap_paterno;
  String ap_materno;
  String nombre;
  String sexo;
  String password;
  String telefono;
  String correo;


  Persona({
    this.ap_materno,this.ap_paterno,this.correo,this.id,this.nombre,this.password,this.sexo,this.telefono
  });

  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(
        ap_materno: json['ap_materno'],
        ap_paterno: json['ap_paterno'],
        correo: json['correo'],
        id: json['id'],
        nombre: json['nombre'],
        password: json['password'],
        sexo: json['sexo'],
        telefono: json['telefono']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "ap_materno":ap_materno,
      "ap_paterno":ap_paterno,
      "correo":correo,
      "nombre":nombre,
      "password":password,
      "sexo":sexo,
      "telefono":telefono


    };
  }
}

List<Persona> personasFromJson(String strJson) {
  //(strJson);
  final str = json.decode(strJson);
  ////(str);
  return List<Persona>.from(str.map((item) {
    ////(item);
    return Persona.fromJson(item);
  }));
}

String personasToJson(Persona data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}
