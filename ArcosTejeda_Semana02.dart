class Persona {
  String nombre = ""; // ? can be null
  String apellido = "";
  Persona(this.nombre, this.apellido);
  /*
    Persona(String vnombre, String vapellido){
      nombre=vnombre;
      apellido=vapellido;
    }
  */
  Persona.nuevo(String vnombre) {
    nombre = vnombre;
  }
}

class MarvelHeroes {
  String NombrePila = "";
  String NombrePersonaje = "";
  MarvelHeroes({required this.NombrePila, required this.NombrePersonaje});
  MarvelHeroes.nombrePilaOnly(String NombreHeroe)
      : this(NombrePila: "", NombrePersonaje: NombreHeroe);
  MarvelHeroes.nombrePersonajeOnly(String NombrePersonaje)
      : this(NombrePila: NombrePersonaje, NombrePersonaje: "");
}

class DCHeroes {
  String? nombrePila;
  String? nombrePersonaje;
  DCHeroes({required this.nombrePila, required this.nombrePersonaje});

  DCHeroes.fromDCJson(Map<String?, String?> dCJson) {
    if (dCJson.containsKey('nombrePila')) {
      nombrePila = dCJson['nombrePila'];
    } else {
      print("No tiene nombre");
    }

    if (dCJson.containsKey('nombrePersonaje')) {
      nombrePersonaje = dCJson['nombrePersonaje'];
    } else {
      print("No tiene alias");
    }
  }
}

void main() {
  Map<String?, String?> personaje01 = {
    "nombrePila": "Bruce Wayne",
    "nombrePersonaje": "Batman"
  };
  Map<String?, String?> personaje02 = {"nombrePila": "Otto Octavio"};
  Map<String?, String?> personaje03 = {"nombrePersonaje": "Dr Octopus"};

  DCHeroes nombrePilaNombrePersonaje = DCHeroes.fromDCJson(personaje01);
  DCHeroes soloNombrePila = DCHeroes.fromDCJson(personaje02);
  DCHeroes soloNombrePersonaje = DCHeroes.fromDCJson(personaje03);
}
