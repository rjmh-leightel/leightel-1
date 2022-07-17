<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Costo.aspx.cs" Inherits="FESAJustificacion.Costo" %>

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
            <div>
                <asp:UpdatePanel ID="panGrid" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="pn_buscadores" runat="server">
                            <div class="row">
                                <div class="col-sm-1">
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-4">
                                    <label>
                                        Empresa:</label>


                                    <asp:DropDownList ID="ddl_empresa" runat="server" class="form-control" AutoPostBack="true"
                                        Width="95%" placeholder="Empresa" OnSelectedIndexChanged="ddl_empresa_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <label>
                                        Sucursal:</label>

                                    <asp:DropDownList ID="ddl_subEmpresa" runat="server" class="form-control"
                                        Width="95%" placeholder="SubEmpresa" AutoPostBack="true" OnSelectedIndexChanged="ddl_subEmpresa_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                        </asp:Panel>
                        <hr />
                        <asp:Panel ID="pn_datos" runat="server">
                            <div class="row">
                                <div class="col-sm-1">
                                </div>
                                <div class="col-sm-10">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                                Font-Size="10" GridLines="None" ID="gvTiposPaginas" PageSize="8" runat="server" Width="100%"
                                                OnPageIndexChanging="gvUsuarioPageIndexChanging" OnSelectedIndexChanging="gvUsuarioProSelectedIndexChanging"
                                                OnRowCommand="gvUsuarioRowCommand">
                                                <Columns>
                                                    <asp:BoundField DataField="CODIGO_CSBE" HeaderText="ID" SortExpression="Name" />
                                                    <asp:BoundField DataField="CODIGO_COS" HeaderText="IDCOS" SortExpression="Name" />
                                                    <asp:BoundField DataField="NOMBRE_COS" HeaderText="NOMBRE" SortExpression="Name" />
                                                    <asp:BoundField DataField="DESCRIPCION_COS" HeaderText="DESCRIPCION" SortExpression="Name" />
                                                    <asp:BoundField DataField="HOMOLOGACION_CSBE" HeaderText="HOMOLOGACION" SortExpression="Name" />                                                    
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label text="COSTO" runat="server"/>
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                        $ <asp:Label ID="lbl_motivo" runat="server" Text='<%#Bind("COSTO_CSBE")%>'/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>  
                                                    <asp:CommandField ButtonType="Button" HeaderText="" ShowSelectButton="True" SortExpression="8"
                                                        SelectText="Editar" ItemStyle-CssClass="pCentrar">
                                                        <ControlStyle CssClass="btn btn-sm btn-primary" />
                                                    </asp:CommandField>
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-1">
                                </div>
                            </div>
                            <div class="col-lg-1 col-md-1 col-sm-1">
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-10">
                                <table border="0" width="100%">

                                    <td colspan="4" align="center">
                                        <h3>Tipos de páginas </h3>
                                        <hr />
                                    </td>
                                    <tr>
                                        <td align="right" style="width: 15%">&nbsp;
                                        </td>
                                        <td align="left" style="width: 35%">
                                            <center>
                                                <label>
                                                    Disponibles:
                                                </label>
                                            </center>
                                        </td>
                                        <td align="right" style="width: 15%"></td>
                                        <td align="left" style="width: 35%">
                                            <center>
                                                <label>
                                                    Asignados:
                                                </label>
                                            </center>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 15%">&nbsp;
                                        </td>
                                        <td align="left" style="width: 35%">
                                            <asp:ListBox ID="lb_paginasDisponibles" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                        </td>
                                        <td align="right" style="width: 15%">
                                            <center>
                                                <asp:LinkButton runat="server" ID="img_pasarUno" OnClick="img_pasarUno_Click">
                                                <img src="img/pasar.png" />
                                                </asp:LinkButton>
                                                <br />
                                                <br />
                                                <asp:LinkButton runat="server" ID="img_regresarUno" OnClick="img_regresarUno_Click">
                                                <img src="img/regresar.png" />
                                                </asp:LinkButton>
                                            </center>
                                        </td>
                                        <td align="left" style="width: 35%">
                                            <asp:ListBox ID="lb_paginaAsignado" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                            <div class="col-lg-1 col-md-1 col-sm-1">
                            </div>
                        </asp:Panel>
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="panCrea" runat="server" Visible="false">
                    <ContentTemplate>
                        <table border="0" class="table-condensed" style="width: 80%;">
                            <tr align="center">
                                <td colspan="4">
                                    <h3>
                                        <asp:Label ID="lbl_etiqueta" runat="server" Text="Editar Página"></asp:Label></h3>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="width: 35%;">
                                    <asp:TextBox ID="codigo_csbe" runat="server" MaxLength="150" CssClass="hidden" Style="text-transform: uppercase"></asp:TextBox>
                                </td>
                                <td align="left" style="width: 35%">
                                    <asp:TextBox ID="codigo_cos" runat="server" MaxLength="150" CssClass="hidden" Style="text-transform: uppercase"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 15%">
                                    <label>Nombre:</label>
                                    &nbsp;
                                </td>
                                <td align="left" style="width: 15%">
                                    <asp:TextBox ID="txt_nombre" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                                </td>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>Descipción:</label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 15%">
                                        <asp:TextBox ID="txt_descripcion" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                                    </td>
                                </tr>
                            </tr>
                            <tr>
                                  <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Homologación:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_homologa" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <td align="right" style="width: 25%">
                                    <label>
                                        Costo:
                                    </label>
                                    &nbsp;
                                </td>
                                <td align="left" style="width: 35%">
                                    <asp:TextBox ID="txt_costo" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                                </td>
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
                            </tr>


                        </table>
                        <hr />
                        <table align="right">
                            <tr align="right" style="width: 100%">
                                <td align="right" style="width: 35%">
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" />
                                    <asp:Button ID="btnCerrar" runat="server" Text="Regresar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
                                        CausesValidation="false" />
                                </td>

                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>




            </div>

            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

