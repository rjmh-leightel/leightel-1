<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubEmpresaConfig.aspx.cs" Inherits="FESAJustificacion.SubEmpresaConfig" %>

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
                            <h3>Sub Empresa</h3>
                            <br />
                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12"></div>
                                <div class="col-lg-4 col-md-8 col-sm-6 col-xs-6">
                                    <fieldset id="fs_SubEmpresa" runat="server">
                                        <asp:DropDownList ID="ddl_SubEmpresa" runat="server" class="form-control" AutoPostBack="true"
                                            Width="95%" placeholder="Sub Empresa" OnSelectedIndexChanged="ddl_SubEmpresa_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </fieldset>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnCerrar" runat="server" Text="Regresar" CssClass="btn btn-sm btn-primary" OnClick="btnCerrar_Click"
                                        CausesValidation="false" />
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12 col-sx-12"></div>
                                <div class="col-lg-2 col-md-6 col-sm-6 col-sx-6" style="text-align: start">
                                    <asp:CheckBox ID="cbx_manejaVoluetria" runat="server"></asp:CheckBox>
                                    <label>&nbsp; Maneja Volumetría</label>
                                </div>
                                <div class="col-lg-2 col-md-6 col-sm-6 col-sx-6" style="text-align: start">
                                    <asp:CheckBox ID="cbx_solicitaProveedor" runat="server"></asp:CheckBox>
                                    <label>&nbsp; Solicita Proveedor</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12 col-sx-12"></div>
                                <div class="col-lg-2 col-md-6 col-sm-6 col-sx-6" style="text-align: start">
                                    <asp:CheckBox ID="cbx_solicitaCliente" runat="server"></asp:CheckBox>
                                    <label>&nbsp; Solicita Cliente</label>
                                </div>
                                <div class="col-lg-2 col-md-6 col-sm-6 col-sx-6" style="text-align: start">
                                    <asp:CheckBox ID="cbx_solicitaEmpaquetado" runat="server"></asp:CheckBox>
                                    <label>&nbsp; Solicita Empaquetado</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12 col-sx-12"></div>
                                <div class="col-lg-2 col-md-6 col-sm-6 col-sx-6" style="text-align: start">
                                    <asp:CheckBox ID="cbx_validaEan" runat="server"></asp:CheckBox>
                                    <label>&nbsp; Valida EAN</label>
                                </div>
                                <div class="col-lg-2 col-md-6 col-sm-6 col-sx-6" style="text-align: start">
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>