<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginReset.aspx.cs" Inherits="FESAJustificacion.LoginReset" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ingreso</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/Estilo.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body style="background: url(img/fondo.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">


    <form id="form1" runat="server">
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="true" AsyncPostBackTimeout="360000"
            EnableScriptLocalization="true">
        </cc1:ToolkitScriptManager>
        <asp:Timer ID="timer" runat="server" OnTick="timer_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <center>
          <div class="row center-block" style="display: flex;justify-content: center;margin-top: 1%;">
           
          </div>
             
          <div class="row center-block" style="display: flex;justify-content: center;margin-top: 1%;">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    
                    <div class="panel panel-primary" style="-webkit-box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        -moz-box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);">
                        <div class="panel">
                            <div class="pMensaje" id="informativo" runat="server">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info alert-dismissable float-center">
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                                &times;</button>
                                            <i class="fa fa-info-circle"></i><strong>
                                                <asp:Label ID="lblRespuesta" runat="server" Text=""></asp:Label></strong>
                                        </div>
                                    </div>
                                </div>
                            <div class="panel-heading">
                                <img src="img/Inventario.png" class="img-responsive" />
                            </div>
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user fa-3x" style="margin-top: 37px;"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                   <div class="form-group">
                                       <label for="txt_acceso" class="txt">
                                            <asp:TextBox ID="txt_acceso" runat="server" placeholder=" " MaxLength="100" Style="text-transform: uppercase; order-bottom: 2px solid #33b4ca !important;"
                                             ></asp:TextBox>
                                           <span class="label">Usuario</span>
                                             <span class="border"></span>
                                        </label>
                                    </div>
 
                                                                    
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-3">
                                    
                                </div>
                                <div class="col-xs-9 text-right">
                                   <div class="form-group">
                                       <label for="txt_codigoEmpresarial" class="txt">
                                            <asp:TextBox ID="txt_codigoEmpresarial" runat="server" placeholder=" " MaxLength="100" Style="text-transform: uppercase; order-bottom: 2px solid #33b4ca !important;"
                                             ></asp:TextBox>
                                           <span class="label">Codigo Empresarial</span>
                                             <span class="border"></span>
                                        </label>
                                    </div>
 
                                                                    
                                </div>
                            </div>

                        </div>
                        <a href="#">
                            <div class="panel-footer">
           
                                 <asp:Button ID="btn_ingresar" CssClass="btn btn-link center-block " runat="server" Text="Reset Contraseña" OnClick="btn_ingresar_Click"/>
                                 <div class="clearfix"></div>
                            </div>
                            <div class="panel-footer">
                                <asp:Button ID="btn_regresar" CssClass="btn btn-link pull-right" runat="server" Text="Regresar Login"
                                  OnClick="btn_regresar_Click" />
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

           
        </center>
            </ContentTemplate>
            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="timer" EventName="Tick" />

            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="0" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <div class="overlay" />
                <div class="overlayContent">
                    <img src="img/procesando.gif" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>





    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            setTimeout(function () {
                $(".pMensaje").fadeOut(1500);
            }, 6000);
        });
    </script>

</body>
</html>
