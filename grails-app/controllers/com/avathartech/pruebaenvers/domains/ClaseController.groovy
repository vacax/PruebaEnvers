package com.avathartech.pruebaenvers.domains

class ClaseController {

    def index() {
        render "Hola Mundo....";
    }

    /**
     *
     * @param matricula
     * @param clase
     */
    def asociarEstudianteClase(int matricula, String clase){
        def estudiante=Estudiante.findByMatricula(matricula);
        def miClase=Clases.findByClase(clase);

        if(!estudiante){
            estudiante=new Estudiante(matricula: matricula, nombre: "Nombre_$matricula", apellido: "Apellido_$matricula").save(failOnError: true);
        }

        if(!miClase){
            miClase=new Clases(clase: "$clase").save(failOnError: true);
        }

        def estClase=EstudianteClase.create(estudiante, miClase);
        return "Relación creada: "+estClase;

    }
}
