<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FESAJustificacion.About" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-primary" style="-webkit-box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        -moz-box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        margin-left: 410px; margin-right: 410px; margin-top: 15px">
        <div class="row">
            <center>
                <img src="img/about.jpg" class="img-responsive" width="300px" style="margin-top: 15px;margin-bottom: 15px" id="imgPrincipal" alt="" />
                <h5><strong><asp:Label ID="lbl_version" runat="server"></asp:Label></strong></h5>
                <h5><strong><asp:Label ID="lbl_fecha" runat="server"></asp:Label></strong></h5>
                <h5><a href="https://www.fesaecuador.com.ec/"><strong>https://www.fesaecuador.com.ec/</strong></a></h5>
                <h5>
                    <strong>
                        Quito, Pichincha, Ecuador 170503 
                        Av. Isaac Albeniz E3-154<br />

                        
                        Teléfono Oficina:(+593-2) 299 4900
                        <br />
                        <br />
                        Guayaquil, Guayas, Ecuador
                        Av. de la Americas y Eugenio Almazan, Edif. MECANOS Of. 503A <br />
                        Teléfono Oficina: (+593-4) 2 299 4900
                    </strong>
                </h5>
            </center>
            <br />
        </div>
    </div>
</asp:Content>