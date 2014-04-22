package com.avathartech.pruebaenvers.domains

import org.hibernate.envers.Audited

@Audited
class Estudiante {

    int matricula;
    String nombre;
    String apellido;

    static hasMany = [listaTelefonos : TelefonoEstudiante]

    static constraints = {
        matricula(unique: true);
        nombre(maxSize: 50);
        apellido(maxSize: 50);
    }

    static mapping = {
        table('test_estudiante')
    }
}
