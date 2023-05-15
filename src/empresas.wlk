import profesionales.*
import universidades.*

class EmpresaDeServicio {
    var property honorarioReferencia
    const profesionalesContratados = []
    
    method contratar(profesional) {
   	 profesionalesContratados.add(profesional)
    }
    
    method cuantosEstudiaron(universidad) {
   	 return profesionalesContratados.count({prof => prof.universidad() == universidad})
    }
    
    method profesionalesCaros() {
   	 return profesionalesContratados.filter({prof => prof.honorariosPorHora() > honorarioReferencia}).asSet()
    }
    
    method universidadesFormadoras() {
   	 return profesionalesContratados.map({prof => prof.universidad()}).asSet()
    }
    
    method profesionalMasBarato() {
   	 return profesionalesContratados.min({prof => prof.honorariosPorHora()})
    }
    
    method genteAcotada() {
   	 return profesionalesContratados.all({prof => prof.provinciasDondePuedeTrabajar().size() <= 3})
    }
}
