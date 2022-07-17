<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="FESAJustificacion.Perfil" %>

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
                                                <asp:Label ID="lbl_empresa" runat="server" Text="Empresa:"></asp:Label></label>
                                        </td>
                                        <td>
                                            <label>
                                                <asp:Label ID="lbl_subEmpresa" runat="server" Text="Sucursal:"></asp:Label></label>
                                        </td>
                                        <td>
                                         
                                        </td>
                                    </tr>

                                    <tr align="center">
                                        <td>
                                             <asp:DropDownList ID="ddl_empresa" runat="server" class="form-control" AutoPostBack="true"
                                                Width="95%" placeholder="Empresa" OnSelectedIndexChanged="ddl_empresa_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddl_subEmpresa" runat="server" class="form-control"
                                                Width="95%" placeholder="SubEmpresa" AutoPostBack="true" OnSelectedIndexChanged="ddl_subEmpresa_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            
                                        </td>
                                        
                                    </tr>

                                    <tr align="center">
                                        <td>
                                            <label>
                                                Nombre:</label>
                                        </td>
                                         
                                        <td>
                                            <label>
                                                Activo:</label>
                                        </td>
                                         <td align="right" width="1%">
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
                                       
                                        <td align="right" width="21%">
                                            <asp:Button ID="butBusca" OnClick="butBuscaClick" runat="server" Text="Buscar"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" />
                                            &nbsp;
                                            <asp:Button ID="btnNuevo"  runat="server" Text="Nuevo"
                                                CssClass="btn btn-sm btn-success" Style="margin-top: 1%;" 
                                                onclick="btnNuevo_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                                Font-Size="10" GridLines="None" ID="gvGrid" PageSize="8" runat="server" Width="100%"
                                                OnPageIndexChanging="gvGridPageIndexChanging" OnSelectedIndexChanging="gvGridProSelectedIndexChanging">
                                                <Columns>
                                                    <asp:BoundField DataField="CODIGO_PUS" HeaderText="ID" SortExpression="Name" />
                                                    <asp:BoundField DataField="NOMBRE_PUS" HeaderText="NOMBRE" SortExpression="Name" />
                                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="Name" />
                                                    <asp:CommandField ButtonType="Button" HeaderText="" ShowSelectButton="True" SortExpression="8"
                                                        SelectText="Seleccionar" ItemStyle-CssClass="pCentrar">
                                                        <ControlStyle CssClass="btn btn-sm btn-primary" />
                                                    </asp:CommandField>
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                             </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />

                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="panCrea" runat="server"  Visible="false">
                        <ContentTemplate>
                            <table border="0" class="table-condensed" style="width: 90%;">
                                <tr align="center">
                                    <td colspan="4">
                                            <h3><asp:Label ID="lbl_etiqueta" runat="server" Text="Nuevo Perfil"></asp:Label></h3>
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
                                        &nbsp;
                                        <asp:Button ID="btnCerrar" runat="server" Text="Cerrar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
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
                                        <label>Área:</label> &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_area" runat="server" MaxLength="80" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Está Activo:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:CheckBox ID="cbx_estaActivo" runat="server"></asp:CheckBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                       <label>
                                            Descripción:
                                        </label>&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                         <asp:TextBox ID="txt_descripcion" runat="server"  MaxLength="150" 
                                            CssClass="form-control" Height="70px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                         &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <center>
                                            <label>
                                                Páginas Disponibles:
                                            </label>
                                        </center>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <center>
                                            <label>
                                                Páginas Asignadas:
                                            </label>
                                        </center>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                         <asp:ListBox ID="lb_paginasDisponibles" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                       <center>
                                           <asp:LinkButton runat="server" id="img_pasarUno" OnClick="img_pasarUno_Click" >
                                                <img src="img/pasar.png" />
                                           </asp:LinkButton>
                                           <br />
                                           <br />
                                           <asp:LinkButton runat="server" id="img_regresarUno" OnClick="img_regresarUno_Click"   >
                                                <img src="img/regresar.png" />
                                           </asp:LinkButton>
                                       </center>
                                    </td>
                                    <td align="left" style="width: 35%">
                                          <asp:ListBox ID="lb_paginasAsignadas" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </center>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

