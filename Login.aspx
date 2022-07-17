<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FESAJustificacion.Login" %>

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

    <link href="vendor/Estilo.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
        <center>
          <div class="row center-block" style="display: flex;justify-content: center;margin-top: 1%;">
           
          </div>

          <div class="row center-block" style="display: flex;justify-content: center;margin-top: 1%;">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-10">
                    
                    <div class="panel panel-primary loginR" style="-webkit-box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        -moz-box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);
                                                        box-shadow: 2px 3px 16px 4px rgba(0,0,0,0.65);">
                        <div class="panel">
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
                            <div class="panel-heading" style="display:contents;">
                                <img src="img/Inventario.png" class="img-responsive" />
                            </div>                            
                                        <div style="width:33%;height:33%;">
                                        <img  id="logoUser" src="img/user.png" class="img-responsive" style="border-radius: 20%;box-shadow: 0px 0px 15px #000;padding: 0;border: 0;z-index: 9999;margin-left: 10px; margin-top: 5%;"/>                                         
                                            </div>																						                            
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                <tr>
                                    <td style="border:none;">
                                         <asp:TextBox ID="txt_acceso" runat="server" placeholder="Usuario" MaxLength="100" CssClass="form-control txt bordeInferior loginFont" Style="text-transform: uppercase; border-bottom: 2px solid #33b4ca !important;" TabIndex="1"></asp:TextBox>
                                    </td>                                                                                                                                                
                                </tr>
                                <tr>                                    
                                    <td style="border:none;">
                                        <asp:TextBox ID="txt_password" runat="server" placeholder="Contraseña" class="loginFont" CssClass="form-control txt bordeInferior loginFont" TextMode="Password" TabIndex="2"></asp:TextBox>
                                    </td>                                    
                                </tr>    
                                <tr>
                                    <td style="border:none;">
                                        <asp:TextBox ID="txt_codigoEmpresarial" runat="server" placeholder="Código Empresarial" class="loginFont" CssClass="form-control  txt bordeInferior loginFont" Text="PICHINCHA" TabIndex="3"></asp:TextBox>
                                    </td>
                                </tr>
                                            
                            </table>
                                        </div>



                            
                            
                            <div class="row">
                                <div class="col-xs-3">
                                    
                                </div>
                                <div class="col-xs-9 text-right">

                                    <div class="form-group">
                                      
                                       
                                    </div>
                                    <div class="form-group">
                                       
                                        
                                    </div>
                                    <div class="form-group">
                                        
                                        
                                    </div>

                                 
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <div class="row">
                                   
                                    <div class="col-md-12">

                                        <asp:Button ID="btn_ingresar" CssClass="btn btn-link pull-right" runat="server" Text="Ingresar" OnClick="btn_ingresar_Click" TabIndex="4"/>                                                                                                                                                                 
                                        <asp:Button ID="bnt_recuperaClave" CssClass="btn btn-link pull-left " runat="server" Text="Recuperar Clave"
                                            ToolTip="Para recuperar su clave por favor ingrese su usuario y presione aquí." OnClick="bnt_recuperaClave_Click" TabIndex="5"/>
                                       
                                    </div>

                                    <hr />                                                                                                         
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <div class="brand-logo" style="margin-top:2%">
                <img src="img/fesa-logo.png" width="15%" class="img-responsive">
                <br />
               
            </div>
        </center>
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
