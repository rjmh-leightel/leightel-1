<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CierreMes.aspx.cs" Inherits="FESAJustificacion.CierreMes" %>

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
                        <asp:Panel ID="pnlProcesar" runat="server">
                            <div class="row">   
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">    
                                    <%--<asp:Button ID="btnProcesar" runat="server" Text="Procesar" CssClass="btn btn-sm btn-success" OnClick="btnProcesar_Click" />--%>
                                    </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <asp:Button ID="btnProcesoManual" runat="server" Text="Cerrar mes" CssClass="btn btn-sm btn-success" OnClick="btnCierreMes_Click" AutoPostBack="true"/>
                                    </div>
                                </div>
                            </asp:Panel>                      
                    </ContentTemplate>      
                    </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

