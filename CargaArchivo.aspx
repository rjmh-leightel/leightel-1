<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargaArchivo.aspx.cs" Inherits="FESAJustificacion.CargaArchivo" %>

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
                                <div class="col-lg-3 col-md-3 col-sm-3">
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
                        <asp:Panel ID="pnlUltimaCarga" runat="server">
                            <div class="row">   
                                <div class="col-lg-1 col-md-1 col-sm-1">
                                    </div>
                                <div class="col-lg-2 col-md-2 col-sm-2" style="text-align:right">
                                    <label>Última carga: </label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3" style="text-align:left">
                                    <asp:Label ID="lbl_fechaUltimaCarga" runat="server" Text=""/>
                                    </div>
                                </div>
                            </asp:Panel>
                         <asp:Panel ID="pn_parametros" runat="server">
                            <div class="row">   
                                <div class="col-lg-1 col-md-1 col-sm-1">
                                    </div>
                                <div class="col-lg-2 col-md-2 col-sm-2" style="text-align:right">
                                    <label>Ruta archivo: </label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6" style="text-align:left">
                                    <asp:TextBox ID="txt_id" runat="server" CssClass="form-control" Style="text-transform: uppercase" visible="false"></asp:TextBox>                                    
                                    <asp:TextBox ID="txt_path" runat="server" Width="100%" CssClass="form-control" MaxLength="500" Style="text-transform: uppercase" enabled="false"></asp:TextBox>                                    
                                    </div>
                                </div>
                             <div class="row">   
                                <div class="col-lg-1 col-md-1 col-sm-1">
                                    </div>
                                <div class="col-lg-2 col-md-2 col-sm-2" style="text-align:right">
                                    <label>Automático: </label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3" style="text-align:left">
                                     <asp:CheckBox ID="cbx_automatico" runat="server" Style="margin-top: 1%; width: 95%;"
                                               AutoPostBack="true" Checked="false"  enabled ="false"/>
                                    </div>
                                </div>
                             <div class="row">   
                                <div class="col-lg-1 col-md-1 col-sm-1">
                                    </div>
                                <div class="col-lg-2 col-md-2 col-sm-2" style="text-align:right">
                                    <label>Intervalo (minutos): </label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3" style="text-align:left">
                                    <asp:TextBox ID="txt_intervalo" runat="server" Width="90%" enabled="false" CssClass="form-control" MaxLength="150" Style="text-transform: uppercase" ></asp:TextBox> 
                                    </div>
                                </div>
                             <div class="row">   
                                <div class="col-lg-1 col-md-1 col-sm-1">
                                    </div>
                                <div class="col-lg-2 col-md-2 col-sm-2" style="text-align:right">
                                    <label>Horario: </label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3" style="text-align:left">
                                    <asp:TextBox ID="txt_horario" runat="server" Width="90%" CssClass="form-control" enabled="false" MaxLength="150" Style="text-transform: uppercase"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </asp:Panel>
                        <hr />
                        <asp:Panel ID="pnlProcesar" runat="server">
                            <div class="row">   
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    </div>
                                <div class="col-lg-1 col-md-1 col-sm-1">
                                    <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-sm btn-success" OnClick="btnEditar_Click" AutoPostBack="true"/>
                                </div>
                                <div class="col-lg-1 col-md-1 col-sm-1">    
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" enabled="false" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" AutoPostBack="true"/>
                                    </div>
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <asp:Button ID="btnProcesoManual" runat="server" Text="Procesar Ahora" CssClass="btn btn-sm btn-success" OnClick="btnProcesoManual_Click" AutoPostBack="true"/>
                                    </div>
                                </div>
                            </asp:Panel>                      
                    </ContentTemplate>      
                    </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

