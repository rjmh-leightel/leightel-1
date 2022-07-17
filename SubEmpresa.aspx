<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubEmpresa.aspx.cs" Inherits="FESAJustificacion.SubEmpresa" %>

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
                                <div class="col-lg-3 col-md-4 col-sm-4">
                                    <label>
                                        Empresa:</label>

                                    <asp:DropDownList ID="lst_busEmpresa" runat="server" class="form-control"
                                        Width="95%" placeholder="Empresa" AutoPostBack="true" OnSelectedIndexChanged="lst_busEmpresa_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <label>
                                        Nombre:</label>
                                    <asp:TextBox ID="txt_busNombre" runat="server" CssClass="form-control" Width="95%"
                                        MaxLength="255" placeholder="Nombre"></asp:TextBox>
                                </div>

                                <div class="col-lg-3 col-md-2 col-sm-2">
                                    <div style="padding-top: 10%">
                                        <label>
                                            Activo:</label>
                                        <asp:CheckBox ID="cbx_buscarActivos" runat="server" Style="margin-top: 1%; width: 95%;"
                                            Checked="true" />
                                    </div>
                                </div>
                                <div class="col-lg-1">
                                   
                                </div>
                                <div class="col-lg-1 col-md-3 col-sm-3">
                                    <asp:Button ID="butBusca" OnClick="butBuscaClick" runat="server" Text="Buscar"
                                        CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" />
                                </div>
                                <div class="col-lg-1 col-md-3 col-sm-3">
                                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo"
                                        CssClass="btn btn-sm btn-success" Style="margin-top: 1%;"
                                        OnClick="btnNuevo_Click" />
                                </div>
                            </div>

                        </asp:Panel>
                        <hr />
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                            Font-Size="10" GridLines="None" ID="gvDatos" PageSize="8" runat="server" Width="100%" OnRowCommand="gvDatosRowCommand"
                                            OnPageIndexChanging="gvDatosPageIndexChanging" OnSelectedIndexChanging="gvDatosProSelectedIndexChanging">
                                            <Columns>
                                                <asp:BoundField DataField="CODIGO_SBE" HeaderText="ID" SortExpression="Name" />
                                                <asp:BoundField DataField="NOMBRE_SBE" HeaderText="NOMBRE" SortExpression="Name" />
                                                <asp:BoundField DataField="CORREO_SBE" HeaderText="CORREO" SortExpression="Name" />
                                                <asp:BoundField DataField="TELEFONO_SBE" HeaderText="TELÉFONO" SortExpression="Name" />
                                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="Name" />
                                                <asp:CommandField ButtonType="Button" HeaderText="" ShowSelectButton="True" SortExpression="8"
                                                    SelectText="Seleccionar" ItemStyle-CssClass="pCentrar">
                                                    <ControlStyle CssClass="btn btn-sm btn-warning" />
                                                </asp:CommandField>                                                
                                            </Columns>
                                        <PagerStyle CssClass="pagination-ys" /> </asp:GridView>
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
                <asp:UpdatePanel ID="panCrea" runat="server" Visible="false">
                    <ContentTemplate>
                        <div class="row form-group">
                            <div class="col-lg-12">
                                <center>
                                    <h3>
                                        <asp:Label ID="lbl_etiqueta" runat="server" Text="Nueva Sucursal"></asp:Label></h3>
                                </center>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-lg-6">
                                <label>
                                    Empresa:
                                </label>

                                <asp:DropDownList ID="ddl_empresa" runat="server" class="form-control"
                                    Width="100%" placeholder="Empresa" OnSelectedIndexChanged="ddl_empresa_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-4">
                            </div>
                            <div class="col-lg-1">
                                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" />
                            </div>
                            <div class="col-lg-1">
                                <asp:Button ID="btnCerrar" runat="server" Text="Cancelar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
                                    CausesValidation="false" />
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-lg-6">
                                <label>Nombre:</label>
                                &nbsp;
                                
                                    <asp:TextBox ID="txt_nombre" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                            </div>
                            <div class="col-lg-6">
                                <label>Descripción:</label>
                                &nbsp;
                                
                                    <asp:TextBox ID="txt_descripcion" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                            </div>                            
                        </div>
                        <div class="row form-group">
                            <div class="col-lg-6">
                                <label>Representante:</label>
                                &nbsp;
                                 
                                    <asp:TextBox ID="txt_representante" runat="server" MaxLength="150" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>

                            </div>
                            <div class="col-lg-6">
                                <label>
                                    Identificación:
                                </label>
                                &nbsp;
                                 
                                    <asp:TextBox ID="txt_identifiacion" runat="server" MaxLength="20" CssClass="form-control" Style="text-transform: uppercase"></asp:TextBox>
                            </div>                           
                        </div>
                        <div class="row form-group">
                             <div class="col-lg-6">
                                <label>
                                    E-mail:
                                </label>
                                &nbsp;
                                 
                                    <asp:TextBox ID="txt_email" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-lg-6">
                                <label>
                                    Teléfono:
                                </label>
                                &nbsp;
                                 
                                    <asp:TextBox ID="txt_telefono" runat="server" MaxLength="15" CssClass="form-control"></asp:TextBox>
                            </div>
                            
                        </div>

                        <div class="row form-group">
                             <div class="col-lg-6">
                                <label>
                                    Dirección:
                                </label>
                                &nbsp;
                                 
                                    <asp:TextBox ID="txt_direccion" runat="server" MaxLength="250" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-lg-6">
                                <label>
                                    Está Activo:
                                </label>
                                &nbsp;
                                 
                                <asp:CheckBox ID="cbx_estaActivo" runat="server"></asp:CheckBox>
                            </div>                            
                        </div>                        

                                                

                        <div class="row form-group">
                            <div class="col-lg-6">
                                <label style="display: inline !important;">
                                    <asp:Label ID="Label1" runat="server" Text="Imagen:"></asp:Label>
                                </label>
                                &nbsp;
                               
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:FileUpload runat="server" ID="fuArchivo" />
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:PostBackTrigger ControlID="btnGuardar" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                            </div>
                            <div class="col-lg-6">
                                <label style="display: inline !important;">
                                    <asp:Label ID="lbl_modificaUsuario" runat="server" Text="Modifica Datos de Usuarios:"></asp:Label>
                                </label>
                                &nbsp;
                                    <asp:CheckBox ID="cbx_modificaDatosUsuarios" runat="server"></asp:CheckBox>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-lg-6">
                                <center>
                                    <img class="logo" id="logoCliente" src="img/Inventario.png" runat="server" style="padding: 5px 5px 5px 5px; width: 165px; height: 165px;" />
                                </center>
                            </div>
                        </div>
                        <br />
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <asp:HiddenField ID="hf_codigo" runat="server" />
            <cc1:ModalPopupExtender ID="mp_codigo" runat="server" TargetControlID="hf_codigo"
                PopupControlID="ud_codigo" BackgroundCssClass="modalBackground" DynamicServicePath=""
                Enabled="True">
            </cc1:ModalPopupExtender>
            <asp:UpdatePanel ID="ud_codigo" CssClass="fondoMensaje" runat="server"
                BackColor="White" style="width: 700px;">
                <ContentTemplate>
                    <center class="fondoMensaje">

                        <div class="borde3DFiloSup">
                        </div>
                        <div class="borde3D">
                            <div class="panel panel-primary" style="margin-bottom: 0px !important;">
                                <div class="modal-header" style="padding: 6px !important;">
                                    <asp:LinkButton runat="server" ID="LinkButton4" Style="margin-top: 0px !important; margin-right: 10px !important;" ToolTip="×" Text="×" OnClick="bnt_cerrarObservaciones_Click" class="close" data-dismiss="modal" aria-hidden="true">
                                                            ×
                                    </asp:LinkButton>
                                    <h4>Código Generado</h4>
                                </div>
                                <div class="panel-heading">
                                    <div class="row">
                                        <asp:Image ID="imgCodigoQR" runat="server" Height="120px" Style="max-width: 95%;" />
                                    </div>
                                </div>
                                <a href="#">
                                    <div class="panel-footer">

                                        <asp:LinkButton runat="server" ID="LinkButton1" ToolTip="Regresar" Text="Regresar" OnClick="bnt_cerrarObservaciones_Click">
                                                    Regresar &nbsp;&nbsp; <p class="fa fa-arrow-circle-right"></p>
                                        </asp:LinkButton>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="borde3DFilo">
                        </div>


                    </center>
                </ContentTemplate>
            </asp:UpdatePanel>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

