package com.avathartech.pruebaenvers.domains

import org.hibernate.envers.Audited

@Audited()
class Clases {

    String clase;

    static constraints = {
    }

    static mapping = {
        table('test_clases')
    }
}
