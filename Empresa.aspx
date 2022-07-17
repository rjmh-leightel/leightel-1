<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="FESAJustificacion.Empresa" %>

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
                            <asp:Panel ID="pn_buscadores" runat="server">
                                <table border="0" width="100%">
                                    <tr align="center">
                                        <td>
                                            <label>
                                                Nombre:</label>
                                        </td>
                                        <td>
                                            <label>
                                                Activo:</label>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td width="11%">
                                            <asp:TextBox ID="txt_busNombre" runat="server" CssClass="form-control" Width="95%"
                                                MaxLength="255" placeholder="Nombre"></asp:TextBox>
                                        </td>
                                        <td width="11%">
                                            <asp:CheckBox ID="cbx_buscarActivos" runat="server" Style="margin-top: 1%;
                                                width: 95%;" Checked="true" />
                                        </td>
                                        <td align="right" width="1%">
                                        </td>
                                        <td align="right" width="21%">
                                            <asp:Button ID="butBusca" OnClick="butBuscaClick" runat="server" Text="Buscar"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" />
                                            &nbsp;
                                            <asp:Button ID="btnNuevo"  runat="server" Text="Nuevo"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" 
                                                onclick="btnNuevo_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <table border="0" width="100%">
                                <tr>
                                    <td align="right">
                                        <hr />
                                    </td>
                                </tr>
                                <tr >
                                    <td>
                                        <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                            Font-Size="10" GridLines="None" ID="gv_datos" PageSize="8" runat="server" Width="100%"
                                            OnPageIndexChanging="gv_datosPageIndexChanging" OnSelectedIndexChanging="gv_datosProSelectedIndexChanging">
                                            <Columns>
                                                <asp:BoundField DataField="CODIGO_EMP" HeaderText="ID" SortExpression="Name" />
                                                <asp:BoundField DataField="DESCRIPCION_EMP" HeaderText="EMPRESA" SortExpression="Name" />
                                                <asp:BoundField DataField="CORREO_EMP" HeaderText="CORREO" SortExpression="Name" />
                                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="Name" />
                                                <asp:CommandField ButtonType="Button" HeaderText="" ShowSelectButton="True" SortExpression="8"
                                                    SelectText="Seleccionar" ItemStyle-CssClass="pCentrar">
                                                    <ControlStyle CssClass="btn btn-sm btn-primary" />
                                                </asp:CommandField>
                                            </Columns>
                                        <PagerStyle CssClass="pagination-ys" /> </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="panCrea" runat="server"  Visible="false">
                        <ContentTemplate>
                            <table border="0" class="table-condensed" style="width: 90%;">
                                <tr align="center">
                                    <td colspan="4">
                                            <h3><asp:Label ID="lbl_etiqueta" runat="server" Text="Nueva Empresa"></asp:Label></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        
                                    </td>
                                     <td align="left" style="width: 35%">
                                        
                                    </td>
                                     <td style="width: 15%">
                                        &nbsp;
                                    </td>
                                    <td align="right" style="width: 35%">
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click"
                                             />
                                        <asp:Button ID="btnCerrar" runat="server" Text="Cancelar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
                                            CausesValidation="false" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>Nombre:</label> &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_nombre" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>   
                                                                             
                                    </td>

                                    <td align="right" style="width: 15%">
                                        <label>Representante:</label> &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_representante" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Identifiación:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_identifiacion" runat="server" MaxLength="15" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>   
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Código de Acceso:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_codigoAcceso" runat="server"  MaxLength="10" CssClass="form-control"  autocomplete="off" Text=""></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            E-mail:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_email" runat="server" MaxLength="150" CssClass="form-control" ></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                         
                                    </td>
                                    <td align="left" style="width: 35%">
                                        
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Telefono:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_telefono" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                           Está Activo:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:CheckBox ID="cbx_estaActivo" runat="server"></asp:CheckBox>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

