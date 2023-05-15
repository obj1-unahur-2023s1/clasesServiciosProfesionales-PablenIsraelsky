import universidades.*
import empresas.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
    var property universidad

    method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
    
    method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
    var property universidad
    const provinciasDondePuedeTrabajar = [universidad.provincia()]
    
    method provinciasDondePuedeTrabajar() { return provinciasDondePuedeTrabajar }
    
    method honorariosPorHora() { return universidad.honorariosPorHora()}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
    var property universidad
    const provincias = []
    const  property honorariosPorHora

    method provinciasDondePuedeTrabajar() { return provincias }
    
    method agregarProvincia(prov) { provincias.add(prov) }
}
