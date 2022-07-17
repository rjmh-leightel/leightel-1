<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="FESAJustificacion.Usuario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="pMensaje" id="informativo" runat="server">
                <div class="col-lg-12">
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><a href="Content/">Content/</a>
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
                                        <td></td>
                                        <td></td>
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
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr align="center">
                                        <td>
                                            <label>
                                                Perfil:</label>
                                        </td>
                                        <td>
                                            <label>
                                                Nombre:</label>
                                        </td>
                                        <td>
                                            <label>
                                                Usuario:</label>
                                        </td>
                                        <td>
                                            <label>
                                                Activo:</label>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td width="11%">
                                            <asp:DropDownList ID="lst_busPerfil" runat="server" class="form-control" AutoPostBack="true"
                                                Width="95%" placeholder="Perfil" OnSelectedIndexChanged="lst_busPerfil_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="11%">
                                            <asp:TextBox ID="txt_busNombre" runat="server" CssClass="form-control" Width="95%"
                                                MaxLength="255" placeholder="Nombre"></asp:TextBox>
                                        </td>
                                        <td width="11%">
                                            <asp:TextBox ID="txt_busUsuario" runat="server" CssClass="form-control" Width="95%"
                                                MaxLength="255" placeholder="Usuario"></asp:TextBox>
                                        </td>
                                        <td width="11%">
                                            <asp:CheckBox ID="cbx_buscarActivos" runat="server" Style="margin-top: 1%; width: 95%;"
                                                Checked="true" />
                                        </td>
                                        <td align="right" width="1%"></td>
                                        <td align="right" width="21%">
                                            <asp:Button ID="butBusca" OnClick="butBuscaClick" runat="server" Text="Buscar"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" />
                                            &nbsp;
                                            <asp:Button ID="btnNuevo" runat="server" Text="Nuevo"
                                                CssClass="btn btn-sm btn-success" Style="margin-top: 1%;"
                                                OnClick="btnNuevo_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                                Font-Size="10" GridLines="None" ID="gvUsuario" PageSize="8" runat="server" Width="100%"
                                                OnPageIndexChanging="gvUsuarioPageIndexChanging" OnSelectedIndexChanging="gvUsuarioProSelectedIndexChanging"
                                                OnRowCommand="gvUsuarioRowCommand">
                                                <Columns>
                                                    <asp:BoundField DataField="CODIGO_USR" HeaderText="ID" SortExpression="Name" />
                                                    <asp:BoundField DataField="ALIAS_USR" HeaderText="ALIAS" SortExpression="Name" />
                                                    <asp:BoundField DataField="NOMBRE_USR" HeaderText="NOMBRE" SortExpression="Name" />
                                                    <asp:BoundField DataField="APELLIDO_USR" HeaderText="APELLIDO" SortExpression="Name" />
                                                    <asp:BoundField DataField="EMAIL_USR" HeaderText="CORREO" SortExpression="Name" />                                                    
                                                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="Name" />
                                                    <asp:BoundField DataField="CLAVE_USR" HeaderText="" SortExpression="Name" />
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
                    <asp:UpdatePanel ID="panCrea" runat="server" Visible="false">
                        <ContentTemplate>
                            <table border="0" class="table-condensed" style="width: 90%;">
                                <tr align="center">
                                    <td colspan="4">
                                        <h3>
                                            <asp:Label ID="lbl_etiqueta" runat="server" Text="Nuevo Usuario"></asp:Label></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Login:
                                        </label>
                                        &nbsp; 
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <table>
                                            <tr>
                                                <td style="width: 70%">
                                                    <asp:TextBox ID="txt_login" runat="server" MaxLength="60" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>
                                                </td>
                                                <td style="width: 30%">
                                                    <asp:LinkButton runat="server" ID="lb_actualizaUsuario" Style="margin-left: 10px;" ToolTip="Actualizar Usuario" OnClick="lb_actualizaUsuario_Click">
                                                        <img src="img/act_usuario.png" />
                                                    </asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 15%">&nbsp;
                                    </td>
                                    <td align="right" style="width: 35%">
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" />
                                        <asp:Button ID="btnCerrar" runat="server" Text="Regresar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
                                            CausesValidation="false" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>Nombre:</label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_nombre" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                                    </td>

                                    <td align="right" style="width: 15%">
                                        <label>Apellido:</label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_apellido" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Alias:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_alias" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Cargo:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_cargo" runat="server" MaxLength="150" CssClass="form-control" autocomplete="off" Text=""></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Identificación:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_identifiacion" runat="server" MaxLength="20" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Clave:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_accesoUsuario" TextMode="Password" runat="server" MaxLength="150" CssClass="form-control" autocomplete="off" Text=""></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            E-mail:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_email" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Confirmar Clave:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_confirmaClave" TextMode="Password" runat="server" MaxLength="150" CssClass="form-control"></asp:TextBox>
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
                                        <asp:TextBox ID="txt_telefono" runat="server" MaxLength="15" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Celular:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_celular" runat="server" MaxLength="15" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>
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
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Dirección:
                                        </label>
                                        &nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_direccion" runat="server" MaxLength="700"
                                            CssClass="form-control" Height="70px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>                                  
                                    <td align="right" style="width: 15%">
                                        <label>
                                            <asp:Label ID="lbl_controlTotal" Text="Homologación:" runat="server"></asp:Label>
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_homologa" runat="server" MaxLength="700"
                                            CssClass="form-control" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" align="center">
                                        <h3>Perfiles </h3>
                                        <hr />
                                    </td>
                                </tr>
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
                                        <asp:ListBox ID="lb_perfilDisponibles" runat="server" Width="100%" Height="300px"></asp:ListBox>
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
                                        <asp:ListBox ID="lb_perfilAsignado" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" align="center">
                                        <h3>Sub Empresas </h3>
                                        <hr />
                                    </td>
                                </tr>
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
                                                Asignadas:
                                            </label>
                                        </center>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:ListBox ID="lb_subEmpresasDisponibles" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                    </td>
                                    <td align="right" style="width: 15%">
                                        <center>
                                            <asp:LinkButton runat="server" ID="lb_pasaUnaSubEmpresa" OnClick="lb_pasaUnaSubEmpresa_Click">
                                                <img src="img/pasar.png" />
                                            </asp:LinkButton>
                                            <br />
                                            <br />
                                            <asp:LinkButton runat="server" ID="lb_regresaUnaSubEmpresa" OnClick="lb_regresaUnaSubEmpresa_Click">
                                                <img src="img/regresar.png" />
                                            </asp:LinkButton>
                                        </center>
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:ListBox ID="lb_subEmpresasAsignadas" runat="server" Width="100%" Height="300px"></asp:ListBox>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>


                    <asp:UpdatePanel ID="panBodegas" runat="server" Visible="false">
                        <ContentTemplate>
                            <div class="row">
                                <center>
                                    <h3>Asignar Bodegas</h3>
                                </center>
                            </div>
                            <div class="row">
                                <div class="col-lg-11">
                                    <table width="100%">
                                        <tr>
                                            <td style="width: 40%" align="right">
                                                <label>Sub Empresa:&nbsp;</label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="dd_subEmpresaUsuario" runat="server" class="form-control"
                                                    Width="60%" placeholder="SubEmpresa" AutoPostBack="true" OnSelectedIndexChanged="dd_subEmpresaUsuario_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-lg-1">
                                    <asp:Button ID="bnt_regresarDeBodegas" runat="server" Text="Regresar" CssClass="btn btn-sm btn-primary"
                                        CausesValidation="false" OnClick="bnt_regresarDeBodegas_Click" />
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <table width="80%">
                                    <tr>
                                        <td style="width: 45%">

                                            <center>
                                                <label>Disponibles</label>
                                                <asp:ListBox ID="lb_bodegasDisponible" runat="server" Width="100%" Height="200px"></asp:ListBox>
                                            </center>

                                        </td>
                                        <td style="width: 10%">

                                            <center>
                                                <asp:LinkButton runat="server" ID="lb_pasaUnaBodega" OnClick="lb_pasaUnaBodega_Click">
                                                            <img src="img/pasar.png" />
                                                </asp:LinkButton>
                                                <br />
                                                <br />
                                                <asp:LinkButton runat="server" ID="lb_regresaUnaBodega" OnClick="lb_regresaUnaBodega_Click">
                                                            <img src="img/regresar.png" />
                                                </asp:LinkButton>
                                            </center>

                                        </td>
                                        <td style="width: 45%">

                                            <center>
                                                <label>Asignados</label>
                                                <asp:ListBox ID="lb_bodegasAsignados" runat="server" Width="100%" Height="200px"></asp:ListBox>
                                            </center>

                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <hr />
                            <div class="row">
                                <center>
                                    <h3>Asigna Equipo</h3>
                                </center>
                            </div>
                            <div class="row">
                                <div class="col-lg-11">
                                    <table width="100%">
                                        <tr>

                                            <td align="right">
                                                <asp:DropDownList ID="ddl_equipo" runat="server" class="form-control"
                                                    Width="50%" placeholder="Equipo">
                                                </asp:DropDownList>
                                            </td>

                                            <td style="width: 30%" align="left">&nbsp;
                                               <asp:Button ID="bnt_asignar" runat="server" Text="Asignar" CssClass="btn btn-sm btn-primary"
                                                   CausesValidation="false" OnClick="bnt_asignar_Click" />
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </center>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

