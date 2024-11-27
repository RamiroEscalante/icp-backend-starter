// Nombre: Joshua Gustavo Díaz Ventura
// Pais: México
// Experiencia: 2 años en programación web y 4 años en automatizaciónes de procesos, bases de datos y administración de servidores
actor Name { 
  var name: Text="";

  public query func getName(): async Text {
    return name;
  };

  public func saveName(littlenamemare: Text){
     name := littlenamemare;
  };
};  
