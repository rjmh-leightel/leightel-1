<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="FESAJustificacion.Factura" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="pMensaje" id="informativo" runat="server">
                <div class="col-lg-12">
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            &times;</button>
                        <i class="fa fa-info-circle"></i><strong>
                            <asp:Label ID="lblRespuesta" runat="server" Text=""></asp:Label></strong>
                    </div>
                </div>
            </div>
            <center>
                <div>
                    <asp:UpdatePanel ID="panGrid" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="lbl_nombreSbe" class="hidden" runat="server" Text=""></asp:TextBox>
                            <asp:TextBox ID="lbl_direccionSbe" class="hidden" runat="server" Text=""></asp:TextBox>
                            <asp:TextBox ID="lbl_rucSbe" runat="server" class="hidden" Text=""></asp:TextBox>
                            <asp:TextBox ID="lbl_telefonoSbe" runat="server" class="hidden" Text=""></asp:TextBox>
                            <asp:TextBox ID="lbl_descripcionSbe" runat="server" class="hidden" Text=""></asp:TextBox>
                              
                        <h3>Nueva Factura</h3>
                            <br />
                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12"></div>
                                <div class="col-lg-4 col-md-8 col-sm-6 col-xs-12">
                                    <fieldset id="fs_SubEmpresa" runat="server">
                                        <asp:DropDownList ID="ddl_tipoFactura" runat="server" class="form-control" AutoPostBack="true"
                                            Width="95%" placeholder="Sub Empresa" OnSelectedIndexChanged="ddl_tipoFactura_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </fieldset>
                                </div>                              
                            </div>
                            <br />
                            <br />
                            <div class="row form-group">
                              <div class="col-lg-12 text-right">   
                                   <script>
                                       function printPage() {
                                      var nombreComercio = document.getElementById("<%=lbl_nombreSbe.ClientID%>").value;
                                      var desripcionComercio = document.getElementById("<%=lbl_descripcionSbe.ClientID%>").value;
                                      var rucComercio = document.getElementById("<%=lbl_rucSbe.ClientID%>").value;
                                      var direccionComercio = document.getElementById("<%=lbl_direccionSbe.ClientID%>").value;
                                      var telefonoComercio = document.getElementById("<%=lbl_telefonoSbe.ClientID%>").value;
                                      var nombreCliente = document.getElementById("<%=txt_nombre.ClientID%>").value;
                                      var rucCliente = document.getElementById("<%=txt_ruc.ClientID%>").value;
                                      var telefonoCliente = document.getElementById("<%=txt_celular.ClientID%>").value;
                                            var emailCliente = document.getElementById("<%=datosDetalle.ClientID%>").value;
                                          var direccionCliente = document.getElementById("<%=txt_direccion.ClientID%>").value;   
                                          var getProductDetail = document.getElementById("<%=datosDetalle.ClientID%>");
                                          var subtotalCliente = document.getElementById("<%=txt_subTotal.ClientID%>");                                            
                                          var ivaCliente = document.getElementById("<%=txt_iva.ClientID%>");                                            
                                          var totalCliente = document.getElementById("<%=txt_total.ClientID%>");
                                          var numFactura = document.getElementById("<%=txt_numeroFactura.ClientID%>").value;
                                      var rowCount = document.getElementById("<%=lbl_row_count.ClientID%>");
                                      var MainWindow = window.open('', '', 'height=500, width=480');
                                      var f = new Date();
                                      MainWindow.document.write('<html><head><title>FESA</title>');
                                      MainWindow.document.writeln('<center>' + nombreComercio + '</center>');
                                      MainWindow.document.writeln('<center>' + desripcionComercio + '</center>');
                                      MainWindow.document.writeln('<center>' + rucComercio + '</center>');
                                      MainWindow.document.writeln('DIR: ' + direccionComercio + '<br/>');
                                      MainWindow.document.writeln('TELEFONO: ' + telefonoComercio + '<br/>');
                                      MainWindow.document.writeln('CLIENTE:' + nombreCliente + '<br />');
                                      MainWindow.document.writeln('RUC/CI: ' + rucCliente + '<br />');
                                      MainWindow.document.writeln('TELEFONO:' + telefonoCliente + '<br />');
                                      MainWindow.document.writeln('DIRECCION:' + direccionCliente + '<br />');
                                      MainWindow.document.writeln('FECHA EMISION:' + f.getDate() + "/" + (f.getMonth() + 1) + "/" + f.getFullYear() + '<br/>');
                                      MainWindow.document.writeln('AMBIENTE AUTORIZACION: PRODUCCION:<br/>');
                                      MainWindow.document.writeln('NOTA DE VENTA: ' + numFactura + '<br/>');
                                      MainWindow.document.write('</head><body>');
                                      MainWindow.document.writeln('------------------------------------------------------------------<br/>');
                                           MainWindow.document.writeln('CANT.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DETALLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P.UNIT&nbsp;&nbsp;&nbsp;&nbsp;P.TOTAL<br/>');
                                      MainWindow.document.writeln('------------------------------------------------------------------<br/>');
                                      MainWindow.document.writeln('<table>');
                                           for (var i = 1; i <= parseInt(rowCount.innerText); i++) {
                                               MainWindow.document.writeln('<tr>');
                                               MainWindow.document.writeln('<td>');
                                               MainWindow.document.writeln("&nbsp;&nbsp;&nbsp;" + getProductDetail.rows[i].cells[1].innerHTML + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                               MainWindow.document.writeln('</td>');
                                               MainWindow.document.writeln('<td>');
                                               MainWindow.document.writeln((getProductDetail.rows[i].cells[2].innerHTML).substring(0, 20) + "&nbsp;&nbsp;&nbsp;");
                                               MainWindow.document.writeln('</td>');
                                               MainWindow.document.writeln('<td>');
                                               MainWindow.document.writeln(getProductDetail.rows[i].cells[3].innerHTML + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                               MainWindow.document.writeln('</td>');
                                               MainWindow.document.writeln('<td>');
                                               MainWindow.document.writeln(getProductDetail.rows[i].cells[4].innerHTML + " &nbsp;&nbsp;&nbsp;");
                                               MainWindow.document.writeln('</td>');
                                               MainWindow.document.writeln('</tr>');
                                           }
                                           MainWindow.document.writeln('</table>');                                           
                                           MainWindow.document.writeln('<br />');
                                           MainWindow.document.writeln('SUBTOTAL: ' + subtotalCliente.innerText + '<br />');
                                      MainWindow.document.writeln('IVA 12%: ' + ivaCliente.innerText + '<br />');
                                           MainWindow.document.writeln('TOTAL: ' + totalCliente.innerText + '<br />');
                                           MainWindow.document.writeln('<br />');
                                      MainWindow.document.writeln('<center>***GRACIAS POR SU COMPRA***</center>');
                                      MainWindow.document.write('</body></html>');
                                      MainWindow.document.close();
                                            setTimeout(function () {
                                                MainWindow.print();
                                            }, 500);
                                            return false;
                                        }
                                    </script>
                                    <asp:Button ID="btnGuardar" runat="server" Text="Imprimir" CssClass="btn btn-sm btn-success" OnClick="btn_guardar_click" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnCerrar" runat="server" Text="Nuevo" CssClass="btn btn-sm btn-primary" OnClick="btn_Cerrar_click"
                                        CausesValidation="false" />
                                </div>
                                </div>
                            <br />
                            <br />
                            <div class="row" style="margin-bottom: 25px">
                                <div class="col-lg-1"></div>
                                <div class="col-lg-1 col-sm-1 col-md-1 col-xs-1" style="text-align: right">
                                        <label>Sucursal:</label>
                                    </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12">
                                        <asp:DropDownList ID="dd_subEmpresaUsuario" runat="server" class="form-control"
                                            placeholder="SubEmpresa" OnSelectedIndexChanged="dd_subEmpresaUsuario_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>
                            </div>
                            <div class="row" style="margin-bottom: 10px">
                                <div class="col-lg-1"></div>
                                <div class="col-lg-1 col-sm-1 col-md-1 col-xs-1" style="text-align: right">
                                    <label>Cliente:</label>
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12">
                                    <asp:TextBox ID="txt_nombre" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"
                                        autocomplete="off"></asp:TextBox>
                                </div>
                                <div class="col-lg-1"></div>
                                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-4" style="text-align: right">
                                    <label>Ruc Cliente:</label>
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12" style="text-align: left">
                                    <asp:TextBox ID="txt_ruc" runat="server" MaxLength="13" CssClass="form-control" autocomplete="off"
                                        Style="text-transform: uppercase" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                        ControlToValidate="txt_ruc" runat="server"
                                        ErrorMessage="Ingrese solo números."
                                        ValidationExpression="\d+">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="row" style="margin-bottom: 10px">
                                <div class="col-lg-1"></div>
                                <div class="col-lg-1 col-sm-1 col-md-1 col-xs-1" style="text-align: right">
                                    <label>Teléfono:</label>
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12">
                                    <asp:TextBox ID="txt_celular" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"
                                        autocomplete="off"></asp:TextBox>
                                </div>
                                <div class="col-lg-1"></div>
                                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-2" style="text-align: right">
                                    <label>Dirección:</label>
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12" style="text-align: left">
                                    <asp:TextBox ID="txt_direccion" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"
                                        autocomplete="off"></asp:TextBox>
                                </div>
                            </div>
                            <br />                            
                            <div class="row" style="margin-bottom: 10px">
                                <div class="col-lg-1"></div>
                                <div class="col-lg-1 col-sm-1 col-md-1 col-xs-1" style="text-align: right">
                                    <label>Observación:</label>
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12">
                                    <asp:TextBox ID="txt_observacion" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"
                                        autocomplete="off" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <div class="col-lg-1"></div>
                                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-4" style="text-align: right">
                                    <label>N° de Factura:</label>
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12">
                                    <asp:TextBox ID="txt_numeroFactura" runat="server" MaxLength="20"
                                        CssClass="form-control" Style="text-transform: uppercase" autocomplete="off" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row" style="margin-bottom: 10px">
                            <div class="col-lg-7"></div>                                
                                <div class="col-lg-1 col-sm-1 col-md-1 col-xs-1" style="text-align: right">
                                    <label>Plataforma:</label>                          
                                </div>
                                <div class="col-lg-3 col-sm-12 col-md-12 col-xs-12" style="margin-left:-8px">
                                    <asp:DropDownList ID="listaPlataformas" runat="server" class="form-control" 
                                            Width="95%" placeholder="Sub Empresa" OnSelectedIndexChanged="ddl_tipoFactura_SelectedIndexChanged">
                                        </asp:DropDownList>
                                 </div>
                                </div>

                            <div class="row">
                                <h3>Productos</h3>
                                <asp:LinkButton runat="server" ID="lb_nuevoProducto" Style="margin-left: 5px;" ToolTip="Nuevo Producto" CssClass="danger" OnClick="lb_nuevoProducto_Click">
                                                        <p class="fa fa-plus-circle fa-2x"></p>
                                </asp:LinkButton>
                            </div>

                            <div class="row text-center">
                                <div class="col-md-1"></div>
                                <div class="col-md-10">
                                    <div class="table-responsive">
                                        <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                            Font-Size="10" GridLines="None" ID="datosDetalle" PageSize="10" runat="server" Width="100%"
                                            OnPageIndexChanging="datosDetallePageIndexChanging" OnSelectedIndexChanging="datosDetalleProSelectedIndexChanging">
                                            <Columns>
                                                <asp:BoundField DataField="codigo_pro" HeaderText="ID" SortExpression="Name" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                                <asp:BoundField DataField="CANTIDAD_PED_DOI" HeaderText="CANTIDAD" SortExpression="Name" ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" />
                                                <asp:BoundField DataField="nombre_pro" HeaderText="PRODUCTO" SortExpression="Name" HeaderStyle-CssClass="text-center" />                                                
                                                <asp:BoundField DataField="costo_pro" HeaderText="VALOR UNI" SortExpression="Name" ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" />                                                
                                                <asp:BoundField DataField="COSTOTOALPROD" HeaderText="VALOR TOTAL" SortExpression="Name" ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" />
                                            </Columns>
                                            <PagerStyle CssClass="pagination-ys" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                
                            </div>                            
                            <br />
                            <div class="row text-center">
                                <div class="col-md-1 "></div>
                                <div class="col-md-9 col-md-10 col-xs-10">
                                    <div class="container-fluid">
                                        <div class="row" style="text-align: end;">
                                            Subtotal:                                                                         
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1 col-md-1 col-xs-1" style="text-align: left;">
                                    <asp:Label ID="txt_subTotal" runat="server" Text=""></asp:Label></div>
                                <div class="col-md-1" style="text-align: left;">
                                    <asp:Label ID="lbl_row_count" class="hidden" runat="server" Text="CONTEO ROWS"></asp:Label></div>
                            </div>
                            <div class="row text-center">
                                <div class="col-md-1"></div>
                                <div class="col-md-9 col-md-10 col-xs-10">
                                    <div class="container-fluid">
                                        <div class="row" style="text-align: end;">
                                            Iva 12%:                                        
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1 col-md-1 col-xs-1" style="text-align: left;">
                                    <asp:Label ID="txt_iva" runat="server" Text=""></asp:Label></div>
                            </div>
                            <div class="row text-center">
                                <div class="col-md-1"></div>
                                <div class="col-md-9 col-md-10 col-xs-10">
                                    <div class="container-fluid">
                                        <div class="row" style="text-align: end;">
                                            Total:                                        
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1 col-md-1 col-xs-1" style="text-align: left;">
                                    <asp:Label ID="txt_total" runat="server" Text=""></asp:Label></div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <asp:HiddenField ID="hf_productos" runat="server" />
                <cc1:ModalPopupExtender ID="mp_productos" runat="server" TargetControlID="hf_productos"
                    PopupControlID="ud_productos" BackgroundCssClass="modalBackground" DynamicServicePath=""
                    Enabled="True">
                </cc1:ModalPopupExtender>
                <asp:UpdatePanel ID="ud_productos" runat="server"  class="modalR">
                    <ContentTemplate>
                        <center class="fondoMensaje">
                            <asp:Panel ID="Panelimpresion" runat="server" Style="background: white; border: outset; box-shadow: 2px 2px 5px #999; border-radius: 20px; overflow: auto;" CssClass="popUpR">
                                <table style="width: 100%;">
                                    <tr style="width: 100%; text-align: end">
                                        <td style="text-align: end">
                                            <asp:LinkButton runat="server" OnClick="lb_regresarCrear_Click" ID="LinkButton2" Style="margin-top: 0px !important; margin-right: 10px !important;" ToolTip="×" Text="×" class="close" data-dismiss="modal" aria-hidden="true">                                                            
                                            </asp:LinkButton>
                                    </tr>
                                    <tr style="width: 100%; text-align: center">
                                        <td>
                                            <h3>
                                                <asp:Label runat="server" ID="Label3" Text="Productos" /></h3>
                                        </td>
                                    </tr>
                                </table>

                                <div class="text-center">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-1"></div>
                                            <div class="col-md-5">
                                                <label>Nombre</label>
                                                <asp:TextBox ID="txt_buscarNombreProd" CssClass="form-control" runat="server" />
                                            </div>
                                            <div class="col-md-5">
                                                <label>Descripción</label>
                                                <asp:TextBox ID="txt_buscarDescripcionProd" runat="server" CssClass="form-control" />
                                            </div>
                                            <div class="col-md-1"></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="text-align: end; width: 100%;">
                                    <div class="col-md-12">
                                        <asp:Button ID="bnt_buscarProducto" runat="server" Text="Buscar"
                                            CssClass="btn btn-sm btn-primary center-block" Style="margin-top: 10px;" OnClick="bnt_buscarProducto_Click" />
                                        <br />
                                    </div>
                                </div>
                                <div class="row text-center">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="1" CssClass="table table-hover table-striped pCabTabla"
                                                Font-Size="10" GridLines="None" ID="dg_producto" PageSize="5" runat="server" Width="90%"
                                                OnPageIndexChanging="dg_productoPageIndexChanging" OnSelectedIndexChanging="dg_productoProSelectedIndexChanging">
                                                <Columns>
                                                    <asp:BoundField DataField="codigo_pro" HeaderText="ID" SortExpression="Name" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                                    <asp:BoundField DataField="nombre_pro" HeaderText="NOMBRE" SortExpression="Name" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                                    <asp:BoundField DataField="descripcion_pro" HeaderText="DESCRIPCIÓN" SortExpression="Name" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                                    <asp:BoundField DataField="costo_pro" HeaderText="COSTO" SortExpression="Name" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                                    <asp:BoundField DataField="iva_pro" HeaderText="iva" SortExpression="Name" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                                                    <asp:TemplateField HeaderText="CANTIDAD" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txt_cantidad" Width="50px" CssClass="form-control text-right" Text='<%#Eval("CANTIDAD").ToString()%>' runat="server" onkeypress="return numbersonly(event);" MaxLength="3" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>  
                                <a href="#">
                                    <div class="panel-footer">
                                        <table width="95%">
                                            <tr>
                                                <td style="width: 50%; height: 42px;" align="left">
                                                    <asp:LinkButton runat="server" ID="lst_agregarProducto" ToolTip="Listo" Text="Listo" OnClick="lst_agregarProducto_Click">
                                                                 <p class="fa fa-check-circle-o  fa-3x"></p>
                                                    </asp:LinkButton>
                                                </td>

                                                <td style="width: 50%; height: 42px;" align="right">
                                                    <asp:LinkButton runat="server" ID="lb_regresarCrear" ToolTip="Regresar" Text="Regresar" OnClick="lb_regresarCrear_Click">
                                                            Regresar &nbsp;&nbsp; <p class="fa fa-arrow-circle-right"></p>
                                                    </asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <div class="borde3DFilo">
                                </div>
                            </asp:Panel>
                        </center>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
