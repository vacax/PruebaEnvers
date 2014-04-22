<%@ page import="com.avathartech.pruebaenvers.domains.Estudiante" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-estudiante" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-estudiante" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list estudiante">

        <g:if test="${estudianteInstance?.matricula}">
            <li class="fieldcontain">
                <span id="matricula-label" class="property-label"><g:message code="estudiante.matricula.label"
                                                                             default="Matricula"/></span>

                <span class="property-value" aria-labelledby="matricula-label"><g:fieldValue
                        bean="${estudianteInstance}" field="matricula"/></span>

            </li>
        </g:if>

        <g:if test="${estudianteInstance?.nombre}">
            <li class="fieldcontain">
                <span id="nombre-label" class="property-label"><g:message code="estudiante.nombre.label"
                                                                          default="Nombre"/></span>

                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${estudianteInstance}"
                                                                                          field="nombre"/></span>

            </li>
        </g:if>

        <g:if test="${estudianteInstance?.apellido}">
            <li class="fieldcontain">
                <span id="apellido-label" class="property-label"><g:message code="estudiante.apellido.label"
                                                                            default="Apellido"/></span>

                <span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${estudianteInstance}"
                                                                                            field="apellido"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: estudianteInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${estudianteInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
