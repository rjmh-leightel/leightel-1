<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="FESAJustificacion.Inicio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel-body" style="height: 150vh !important;">
              

                <center>
                    <img src="img/fesa.png" class="img-responsive" runat="server" id="imgPrincipal"/>
                    <iframe runat="server" id="ifrmPrincipal" width="100%" style="height: 150vh;" src="" frameborder="0" allowFullScreen="true" visible="false"></iframe>
                </center>
  
        </div>
    </div>
</asp:Content>
