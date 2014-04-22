package com.avathartech.pruebaenvers.domains

import org.hibernate.envers.Audited

@Audited
class TelefonoEstudiante {

    String telefono;
    String otroCampo;
    Estudiante estudiante;

    static constraints = {

    }

    static mapping = {
        table('test_telefono_estudiante')
    }
}
