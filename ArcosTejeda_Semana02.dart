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
  Persona.Nuevo(String vnombre) {
    nombre = vnombre;
  }
}

class MarvelHeroes {
  String NombrePila = "";
  String? NombrePersonaje = "";
  MarvelHeroes({required this.NombrePila, required this.NombrePersonaje});
}

class DCHeroes {
  String? NombrePila;
  String? NombrePersonaje;
  DCHeroes({required this.NombrePila, required this.NombrePersonaje});

  DCHeroes.fromDCJson(Map<String?, String?> DCJson) {
    if (DCJson.containsKey('NombrePila')) {
      NombrePila = DCJson['NombrePila'];
    } else {
      print("No tiene nombre");
    }

    if (DCJson.containsKey('NombrePersonaje')) {
      NombrePersonaje = DCJson['NombrePersonaje'];
    } else {
      print("No tiene alias");
    }
  }
}

void main() {
  MarvelHeroes personaje1 = new MarvelHeroes(
      NombrePila: "Peter Parker", NombrePersonaje: "Spiderman");

  print("Hola mi nombre es " +
      personaje1.NombrePila +
      " pero me conocen como su amigable vecino " +
      personaje1.NombrePersonaje);
}
