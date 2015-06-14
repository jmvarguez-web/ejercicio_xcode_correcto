
import UIKit
var Admin:AdministradorNotas = AdministradorNotas()
struct nota {
    var nombre = "Por Defecto"
    var descripcion = "Por Defecto"
}

class AdministradorNotas: NSObject {
    var notas = [nota]()
    func agregarNotas(nombre: String, descripcion: String){
        notas.append(nota(nombre: nombre,descripcion: descripcion))
        
    }
   
}
