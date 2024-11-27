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
