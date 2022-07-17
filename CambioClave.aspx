<%@ Page Title="" Language="C#" MasterPageFile="~/CC.Master" AutoEventWireup="true" CodeBehind="CambioClave.aspx.cs" Inherits="FESAJustificacion.CambioClave" %>

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
                    <asp:Timer ID="timer" runat="server" OnTick="timer_Tick" >
                    </asp:Timer>
                    <asp:UpdatePanel ID="panCrea" runat="server">
                        <ContentTemplate>
                            <table border="0" class="table-condensed" style="width: 90%;">
                                <tr align="center">
                                    <td colspan="4">
                                        <h3>
                                            <asp:Label ID="lbl_etiqueta" runat="server" Text="Cambio de Contraseña"></asp:Label></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 15%">
                                        <label>
                                            Login:
                                        </label>
                                        &nbsp; 
                                    </td>
                                    <td align="left" style="width: 35%">

                                        <asp:TextBox ID="txt_login" runat="server" MaxLength="60" CssClass="form-control" Style="text-transform: uppercase" Width="147px" ReadOnly="true"></asp:TextBox>

                                    </td>
                                    <td style="width: 13%">&nbsp;
                                    </td>
                                    <td align="right" style="width: 35%">
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-sm btn-success" OnClick="btnGuardar_Click" />
                                        <asp:Button ID="btnCerrar" runat="server" Text="Regresar" CssClass="btn btn-sm btn-primary"
                                            CausesValidation="false" OnClick="btnCerrar_Click" />
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
                                            Nombre:</label></td>
                                    <td align="left" style="width: 35%">
                                        <asp:TextBox ID="txt_nombre" runat="server" Width="90%" CssClass="form-control" MaxLength="150" Style="text-transform: uppercase" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td style="width: 15%" align="right">
                                        <label>
                                            Apellido:</label></td>
                                    <td>
                                        <asp:TextBox ID="txt_apellido" runat="server" Width="90%" CssClass="form-control" MaxLength="150" Style="text-transform: uppercase" ReadOnly="true"></asp:TextBox>
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
                                            Clave:
                                        </label>
                                    </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:TextBox ID="txt_accesoUsuario" runat="server" onkeyup="validatePassword(this.value);" autocomplete="off" Width="50%" CssClass="form-control" MinLength="8" MaxLength="150" Text="" TextMode="Password"></asp:TextBox>
                                        <span id="msg"></span>
                                    </td>
                                    <td align="right" style="width: 13%;">
                                        <label>
                                            Confirmar Clave:
                                        </label>
                                        &nbsp; </td>
                                    <td align="left" style="width: 35%;">
                                        <asp:TextBox ID="txt_confirmaClave" runat="server" CssClass="form-control" MaxLength="150" Width="50%" TextMode="Password"></asp:TextBox>
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
                        <Triggers>

                            <asp:AsyncPostBackTrigger ControlID="timer" EventName="Tick" />

                        </Triggers>
                    </asp:UpdatePanel>


                    <asp:UpdatePanel ID="panBodegas" runat="server" Visible="false">
                    </asp:UpdatePanel>

                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
