<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

        <div class="container">
            <div class="page-header">
                <h1>Pedido de documentos</h1>
            </div>        


            <div class="panel-body">
                <div class="row">
                    <form role="form">
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label for="InputName">Área</label>
                                <div class="input-group">
                                    <select class="form-control">
                                        <option>Seleccione</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="InputName">Tipo de Documento</label>
                                <div class="input-group">
                                    <select class="form-control">
                                        <option>Seleccione</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                </div>
                            </div>                            

                            <div class="form-group">
                                <label for="InputDocumento">Documento</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="InputDocumento" id="InputName" placeholder="Ingrese documento" required>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                </div>
                            </div>                            

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-20">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-success">Buscar</button>

                                    </div>
                                </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <small><h3 id="tables">Documentos disponibles</h3></small>
                </div>

                <div class="bs-component">
                    <table class="table table-striped table-hover ">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Documento</th>
                                <th>Tipo</th>
                                <th>Nro Caja</th>
                                <th>Plantilla</th>
                                <th>Serie</th>
                                <th>Descripción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                            </tr>

                        </tbody>
                    </table> 
                </div><!-- /example -->
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
            <div class="col-sm-offset-2 col-sm-10" style="padding: 30px ">&nbsp;</div>
        </div>    

    </div>                

</tiles:putAttribute>
</tiles:insertDefinition>