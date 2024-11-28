// Nombre: Ramiro Escalante
// Pais: México
// Experiencia: Fue algo que  nunca pense que pasaria
actor Name { 
  var NombrePersona: Text="";
  var ApellidoPersona: Text = "";

  public query func mostrarPersona(): async Text {
    let Persona: Text = NombrePersona # " " # ApellidoPersona;
    return Persona;
  };

  public func obtenNombre(nombre: Text){
     NombrePersona := nombre;
  };
   public func obtenApellido(apellido: Text){
     ApellidoPersona := apellido;
  };
};  
//---------------------------------------------//
import Debug "mo:base/Debug";
import Principal "mo:base/Principal";
import Result "mo:base/Result";

actor Practica {

  //tipo personalizado 
  type datosUsuario = (Text,Nat8,Principal) ;
  type registroUsuario = Result.Result<datosUsuario,Text>;

  //estructuras o objeto
  type Usuario = {
    nombre: Text;
    edad: Nat8;
    identidad: Principal;
  };

    stable var datos: datosUsuario = ("", 0,Principal.fromText("2vxsx-fae"));
    stable var datosStruct: Usuario = {nombre = "" ;edad = 0 ;identidad = Principal.fromText("2vxsx-fae")};

    type registroUsuarioSrurct = Result.Result<datosUsuario,Text>;

   public shared ({caller}) func CrearDatosUsuario(nombre: Text, edad: Nat8): async registroUsuarioSrurct {
    if (edad >= 18) {

      let datosUsuario: Usuario = {nombre;edad;identidad = caller};
      datosStruct := datosUsuario;

      return #ok(datos);
    } else {
      #err("Lo siento no funciono");
    };
  };

  /*stable var datos: datosUsuario = ("", 0,Principal.fromText("2vxsx-fae"));

   public shared ({caller}) func CrearDatosUsuario(nombre: Text, edad: Nat8): async registroUsuario {
    if (edad >= 18) {

      let datosUsuario: (Text, Nat8,Principal) = (nombre, edad,caller);
      datos := datosUsuario;

      return #ok(datos);
    } else {
      #err("Lo siento no funciono");
    };
  };*/

  public query func obtnerDatosUsuario(): async datosUsuario{
    return datos;
  };


  public shared query(msg) func WhoAmI(): async Principal{
    Debug.print(debug_show(msg));
    return msg.caller;
  };
};
