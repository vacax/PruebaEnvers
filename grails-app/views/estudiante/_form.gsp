<%@ page import="com.avathartech.pruebaenvers.domains.Estudiante" %>



<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'matricula', 'error')} required">
    <label for="matricula">
        <g:message code="estudiante.matricula.label" default="Matricula"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="matricula" type="number" value="${estudianteInstance.matricula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nombre', 'error')} ">
    <label for="nombre">
        <g:message code="estudiante.nombre.label" default="Nombre"/>

    </label>
    <g:textField name="nombre" maxlength="50" value="${estudianteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'apellido', 'error')} ">
    <label for="apellido">
        <g:message code="estudiante.apellido.label" default="Apellido"/>

    </label>
    <g:textField name="apellido" maxlength="50" value="${estudianteInstance?.apellido}"/>

</div>

