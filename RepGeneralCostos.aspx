<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepGeneralCostos.aspx.cs" Inherits="FESAJustificacion.RepGeneralCostos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

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

            <div class="panel-body">

                <div class="row form-group">

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

                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <label>
                                        Ciclo:</label>

                                    <asp:DropDownList ID="ddl_ciclo" runat="server" class="form-control"
                                        Width="95%" placeholder="Ciclo" AutoPostBack="true" OnSelectedIndexChanged="ddl_ciclo_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                </div>
                          <div class="row">
                                <div class="col-sm-1">
                                </div>                                                               
                              </div>
                         <div class="row">
                                <div class="col-sm-11">
                                </div>                                
                                <div class="col-lg-1 col-md-1 col-sm-1">                                    
                             <asp:Button ID="butBusca" OnClick="butBuscaClick" runat="server" Text="Buscar"
                                            CssClass="btn btn-sm btn-primary" />
                                    </div>
                        </asp:Panel>                                                                              

                </div>
            </div>            
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <rsweb:ReportViewer ID="rv_costoCiclo" runat="server" Width="100%">
                            <LocalReport DisplayName="Costos del ciclo" EnableExternalImages="True" ReportPath="Reporte/rp_detalleConsumo.rdlc">
                            </LocalReport>
                        </rsweb:ReportViewer>                        
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
