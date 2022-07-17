<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="FESAJustificacion.Proveedor" %>
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
                            <asp:Panel ID="pn_buscadores" runat="server">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                        <asp:TextBox ID="txt_ruc" runat="server" CssClass="form-control" 
                                             MaxLength="13" placeholder="Ruc" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                            ControlToValidate="txt_ruc" runat="server"
                                            ErrorMessage="Ingrese solo números."
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                        <asp:TextBox ID="txt_descripcion" runat="server" CssClass="form-control" 
                                            MaxLength="50" placeholder="Nombre"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                        <asp:TextBox ID="txt_codigoHomol" runat="server" CssClass="form-control" 
                                            MaxLength="10" placeholder="Código de Homologación"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-1 col-md-2 col-sm-2">
                                        <asp:CheckBox ID="cbx_buscarActivos" runat="server" Text="Activo:&nbsp;" Style="margin-top: 1%; "
                                            Checked="true" TextAlign="Left" AutoPostBack="True" OnCheckedChanged="cbx_buscarActivos_CheckedChanged"/>
                                    </div>
                                    <div class="col-lg-1 col-md-0 col-sm-0">
                                    </div>
                                    <div class="col-lg-1 col-md-2 col-sm-2">
                                        <asp:Button ID="butBusca" runat="server" Text="Buscar"
                                            CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" OnClick="butBuscaClick" />
                                    </div>
                                    <div class="col-lg-1 col-md-2 col-sm-2">
                                        <asp:Button ID="btnNuevo" runat="server" Text="Nuevo"
                                            CssClass="btn btn-sm btn-success" Style="margin-top: 1%;" OnClick="btnNuevo_Click"/>
                                    </div>
                                </div>
                            </asp:Panel>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-striped table-bordered table-hover dataTable no-footer dtr-inline pCabTabla"
                                                Font-Size="10" GridLines="None" ID="gv_datos" PageSize="8" runat="server" Width="100%"
                                                 OnPageIndexChanging="gv_datosPageIndexChanging" OnSelectedIndexChanging="gv_datosProSelectedIndexChanging">
                                                <Columns>
                                                    <asp:BoundField DataField="CODIGO_PRV" HeaderText="ID" SortExpression="Name" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"/>
                                                    <asp:BoundField DataField="RUC_PRV" HeaderText="RUC" SortExpression="Name" HeaderStyle-CssClass="text-center"/>
                                                    <asp:BoundField DataField="DESCRIPCION_PRV" HeaderText="NOMBRE" SortExpression="Name" HeaderStyle-CssClass="text-center"/>
                                                    <asp:BoundField DataField="EMAIL_PRV" HeaderText="EMAIL" SortExpression="Name" HeaderStyle-CssClass="text-center"/>
                                                    <asp:BoundField DataField="TELEFONO_PRV" HeaderText="TELÉFONO" SortExpression="Name" HeaderStyle-CssClass="text-center"/>
                                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="Name" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                                    <asp:CommandField ButtonType="Button" HeaderText="" ShowSelectButton="True" SortExpression="8"
                                                        SelectText="Seleccionar" ItemStyle-CssClass="pCentrar text-center">
                                                        <ControlStyle CssClass="btn btn-sm btn-primary" />
                                                    </asp:CommandField>
                                                    <asp:BoundField DataField="ESTAACTIVO_PRV" HeaderText="ESTAACTIVA_PRV" SortExpression="Name"
                                                        ControlStyle-CssClass="hidden" FooterStyle-CssClass="hidden" HeaderStyle-CssClass="hidden"
                                                        ItemStyle-CssClass="hidden" />
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="panCrea" runat="server" Visible="false">
                        <ContentTemplate>
                            <table border="0" class="table-condensed" style="width: 90%;">
                                <tr align="center">
                                    <td colspan="4">
                                        <h3>
                                            <asp:Label ID="lbl_etiqueta" runat="server" Text="Nuevo Proveedor"></asp:Label></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%"></td>
                                    <td align="left" style="width: 35%"></td>
                                    <td style="width: 15%">&nbsp;
                                    </td>
                                    <td align="right" style="width: 35%">
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" /> 
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnCerrar" runat="server" Text="Regresar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
                                            CausesValidation="false" />
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td align="right" style="width: 15%">
                                        <label>RUC:</label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_rucPrv" runat="server" MaxLength="13" CssClass="form-control" Style="text-transform: uppercase"
                                            onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                            ControlToValidate="txt_rucPrv" runat="server"
                                            ErrorMessage="Ingrese solo números."
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </td>

                                    <td align="right" style="width: 15%">
                                        <label>Nombre:</label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_descripcionPrv" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Teléfono:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_telefono" runat="server" MaxLength="15" CssClass="form-control" Style="text-transform: uppercase"
                                            onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                            ControlToValidate="txt_telefono" runat="server"
                                            ErrorMessage="Ingrese solo números."
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Código Homologación:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_codigoHomologacion" runat="server" MaxLength="10" CssClass="form-control" autocomplete="off" Text=""></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Email:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_email" runat="server" MaxLength="150" CssClass="form-control" rowspan="2"></asp:TextBox>
                                    </td>

                                    <td align="right" style="width: 15%">
                                        <label>
                                            Dirección:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_direccion" runat="server" MaxLength="150" CssClass="form-control" rowspan="2"></asp:TextBox>
                                    </td>
                                    </tr>
                                <tr>

                                    <td align="right" style="width: 15%">
                                        <label>
                                            Está Activo:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:CheckBox ID="cbx_estaActivo" runat="server"></asp:CheckBox>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
</asp:Content>
