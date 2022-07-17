<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParametroSistema.aspx.cs" Inherits="FESAJustificacion.ParametroSistema" %>

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
                <div>
                   
                    <asp:UpdatePanel ID="panCrea" runat="server">
                        <ContentTemplate>
                            <table border="0" class="table-condensed center-block" style="width: 70%;">
                                <tr align="center">
                                    <td colspan="4">
                                        <h3>
                                            <asp:Label ID="lbl_etiqueta" runat="server" Text="Párametro Seguridad en la Contraseña"></asp:Label></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%"></td>
                                    <td align="left" style="width: 35%"></td>
                                    <td style="width: 13%">&nbsp;
                                    </td>
                                    <td align="right" style="width: 35%">
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" />
                                        <asp:Button ID="btnRecargar" runat="server" Text="Recargar" CssClass="btn btn-sm btn-primary"
                                            CausesValidation="false" OnClick="btnRecargar_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">&nbsp;&nbsp;&nbsp;</td>
                                    <td align="left" style="width: 35%">&nbsp;</td>

                                    <td align="right" style="width: 13%">&nbsp;&nbsp;&nbsp;</td>
                                    <td align="left" style="width: 35%">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Longitud Mínima:</label></td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_longitud" runat="server" Width="100px" CssClass="form-control" onkeypress="return numbersonly(event);" MaxLength="2" Style="text-align:right" ></asp:TextBox>
                                    </td>
                                    <td style="width: 15%" align="right">
                                        <label>
                                            Caracteres en Mayúscula:</label></td>
                                    <td>
                                        <asp:TextBox ID="txt_mayuscula" runat="server" Width="100px" CssClass="form-control" MaxLength="2" onkeypress="return numbersonly(event);" Style="text-align:right" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">&nbsp;</td>
                                    <td align="left" style="width: 35%">&nbsp;</td>
                                    <td align="right" style="width: 13%">&nbsp;</td>
                                    <td align="left" style="width: 35%">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%;">
                                        <label>
                                            Caracteres en Minúscula:
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:TextBox ID="txt_minuscula" runat="server" Width="100px" CssClass="form-control" MaxLength="2" onkeypress="return numbersonly(event);" Style="text-align:right" ></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 13%;">
                                        <label>
                                            Caracteres Numéricos:
                                        </label>
                                        &nbsp; </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:TextBox ID="txt_numerico" runat="server" CssClass="form-control" MaxLength="2" onkeypress="return numbersonly(event);" Width="100px" Style="text-align:right"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%; height: 18px;">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%; height: 18px;"></td>
                                    <td align="right" style="width: 13%; height: 18px;">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%; height: 18px;"></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%;">
                                        <label>
                                            Caracteres Especiales:
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:TextBox ID="txt_especiales" runat="server" Width="100px" CssClass="form-control" MaxLength="2" onkeypress="return numbersonly(event);" Style="text-align:right"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 13%;">
                                         <label>
                                            Intentos Fallidos:
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%;">
                                           <asp:TextBox ID="txt_reintento" runat="server" Width="100px" CssClass="form-control" MaxLength="2" onkeypress="return numbersonly(event);" Style="text-align:right" ></asp:TextBox>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td align="right" style="width: 15%; height: 18px;">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%; height: 18px;"></td>
                                    <td align="right" style="width: 13%; height: 18px;">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%; height: 18px;"></td>
                                </tr>
                                 <tr>
                                    <td align="right" style="width: 15%;">
                                        <label>
                                           Actualizar Clave cada:
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:TextBox ID="txt_diacambioclave" runat="server" Width="100px" CssClass="form-control" MaxLength="2" onkeypress="return numbersonly(event);" Style="text-align:right"></asp:TextBox> días
                                    </td>
                                    <td align="right" style="width: 13%;">
                                       
                                    </td>
                                    <td align="left" style="width: 35%;">
                                       
                                    </td>
                                </tr>
                            </table>

                            <br />
                            <table border="0" class="table-condensed" style="width: 90%;">
                                <tr align="center">
                                    <td colspan="4">
                                        <h3>
                                            <asp:Label ID="Label1" runat="server" Text="Párametro Configuración de Correo"></asp:Label></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%"></td>
                                    <td align="left" style="width: 35%"></td>
                                    <td style="width: 13%">&nbsp;
                                    </td>
                                    <td align="right" style="width: 35%"></td>
                                </tr>
                                    <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Cuenta Enmascarada:</label></td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_cuentaEnvio" runat="server" Width="90%" CssClass="form-control" MaxLength="150" ></asp:TextBox>
                                    </td>
                                    <td style="width: 15%" align="right">
                                        <label>
                                           URL:</label></td>
                                    <td>
                                        <asp:TextBox ID="txt_url" runat="server" Width="90%" CssClass="form-control" MaxLength="150"   ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Cuenta de Correo :</label></td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_cuentaUsuario" runat="server" Width="90%" CssClass="form-control" MaxLength="150" ></asp:TextBox>
                                    </td>
                                    <td style="width: 15%" align="right">
                                        <label>
                                            Clave Cuenta de Correo:</label></td>
                                    <td>
                                        <asp:TextBox ID="txt_clave" runat="server" Width="90%" CssClass="form-control" MaxLength="155"  TextMode="Password" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                         <label>
                                            Servidor SMTP:</label>
                                    </td>
                                    <td align="left" style="width: 35%">
                                         <asp:TextBox ID="txt_servidor" runat="server" Width="90%" CssClass="form-control" MaxLength="80" ></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 13%">
                                         <label>
                                            Puerto Servidor SMTP:</label>
                                    </td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_puerto" runat="server" Width="90%" CssClass="form-control" MaxLength="3" onkeypress="return numbersonly(event);" Style="text-transform: uppercase" ></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%;">
                                        <label>
                                            Seguridad Correo SSL:
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:CheckBox ID="cbx_estaSSL" runat="server" />
                                    </td>
                                    <td align="right" style="width: 13%;">
                                       
                                        &nbsp; </td>
                                    <td align="left" style="width: 35%;">
                                   
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right" style="width: 15%; height: 18px;">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%; height: 18px;"></td>
                                    <td align="right" style="width: 13%; height: 18px;">&nbsp;
                                    </td>
                                    <td align="left" style="width: 35%; height: 18px;"></td>
                                </tr>
                            </table>


                        </ContentTemplate>
                    </asp:UpdatePanel>


                    <asp:UpdatePanel ID="panBodegas" runat="server" Visible="false">
                    </asp:UpdatePanel>

                </div>
            </div>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
