package com.avathartech.pruebaenvers.domains

import org.hibernate.envers.Audited

@Audited
class EstudianteClase implements Serializable{

    Estudiante estudiante;
    Clases clases;

    static EstudianteClase create(Estudiante estudiante1, Clases clases1){
        new EstudianteClase(estudiante: estudiante1, clases: clases1).save(failOnError: true);
    }

    static boolean remove(Estudiante estudiante1, Clases clases1){
        def instancia=EstudianteClase.findByEstudianteAndClases(estudiante1, clases1);

        if(!instancia){
            return false;
        }

        instancia.delete(flush: true);
        return true;
    }

    static constraints = {
    }

    static mapping = {
        table('test_estudiante_clase')
        //https://community.jboss.org/message/805860
        //http://stackoverflow.com/questions/9107452/having-difficulty-using-envers-to-audit-a-many-to-many-relation
        //id(composite: ['estudiante', 'clases']) // No Soportado aun.... No lo veo claro.. :S
        version(false)
    }

    public String toString(){
        return "Estudiante: $estudiante.nombre - Clase: $clases.clase";
    }
}
