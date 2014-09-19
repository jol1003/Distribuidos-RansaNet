<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

        <form role="form">

            <div class="container">


                <div class="page-header">
                    <h1>Recojo de documentos</h1>
                </div>        


                <div class="panel-body">
                    <div class="row">

                        <div class="col-lg-6">

                            <div class="form-group">
                                <label for="InputName">Área</label>
                                <div class="input-group">
                                    <select class="form-control" name="area" var>
                                    <c:forEach items="${areas}" var="area">
                                        <option value="${area.key}" ${month.key == selectedMonth ? 'selected' : ''}>${month.value}</option>
                                    </c:forEach>

                                    </select>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="InputCantidadCajas">Cantidad de cajas</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="InputCantidadCajas" id="InputCantidadCajas" placeholder="Ingrese documento" required>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                </div>
                            </div>                               

                            <div class="form-group">
                                <label for="InputMessage">Descripción</label>
                                <div class="input-group">
                                    <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required placeholder="Ingrese descripción"></textarea>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>


                <div class="bs-docs-section">

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="pull-right">
                                <button type="submit" class="btn btn-danger">Cancelar</button>
                                <button type="submit" class="btn btn-success">Registrar</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-offset-2 col-sm-10">&nbsp;</div>
                </div>    

            </div>
        </form>
    </tiles:putAttribute>
</tiles:insertDefinition>