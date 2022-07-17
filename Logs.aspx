<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logs.aspx.cs" Inherits="FESAJustificacion.Logs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>

            <div class="pMensaje" id="informativo" runat="server">
                <div class="col-lg-12">
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            &times;
                        </button>
                        <i class="fa fa-info-circle"></i><strong>
                            <asp:Label ID="lblRespuesta" runat="server" Text=""></asp:Label></strong>
                    </div>
                </div>
            </div>

            <center>
                <div>

                    <asp:UpdatePanel ID="panGrid" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="pn_buscadores" runat="server">
                                <table border="0" width="100%">

                                    <tr align="center">
                                        <td>
                                            <label>Método:</label>
                                        </td>
                                        <td>
                                            <label>Mensaje:</label>
                                        </td>
                                         
                                        <td>
                                            <label>Fecha Inicio:</label>
                                        </td>
                                        <td>
                                            <label>Fecha Fin:</label>
                                        </td>
                                        <td>
                                            <label>Núm. Registros:</label>
                                        </td>
                                    </tr>

                                    <tr align="center">
                                        <td width="11%">
                                            <asp:TextBox ID="txt_BusMetodo" runat="server" CssClass="form-control" Width="95%" MaxLength="60"
                                                placeholder="Método" ></asp:TextBox>
                                        </td>
                                        <td width="11%">
                                            <asp:TextBox ID="txt_BusMensaje" runat="server" CssClass="form-control" Width="95%" MaxLength="100"
                                                placeholder="Nombre" ></asp:TextBox>
                                        </td>


                                        <td width="11%">
                                            <asp:TextBox ID="txt_fechaInicio" runat="server" CssClass="form-control" MaxLength="10" Width="90%"></asp:TextBox>
                                            <cc1:CalendarExtender ID="cex_fechaInicio" runat="server" TargetControlID="txt_fechaInicio" CssClass="Calendar"
                                                ClearTime="True" />
                                        </td>

                                        <td width="11%">
                                            <asp:TextBox ID="txt_fechaFin" runat="server" CssClass="form-control" MaxLength="10" Width="90%"></asp:TextBox>
                                            <cc1:CalendarExtender ID="cex_fechaFin" runat="server" TargetControlID="txt_fechaFin" CssClass="Calendar"
                                                ClearTime="True" />
                                        </td>


                                        <td align="right" width="1%">
                                            <asp:TextBox ID="txt_totalRegistros" runat="server" CssClass="form-control text-center" Width="95%" MaxLength="4"
                                                placeholder="Total de Registros" Text="10"></asp:TextBox>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="val_busqueda" Display="Dynamic"
                                                        ControlToValidate="txt_totalRegistros" runat="server" CssClass="alert-danger"
                                                        ErrorMessage="Solo se puede ingresar Números"
                                                        ValidationExpression="\d+">
                                            </asp:RegularExpressionValidator>
                                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" Display="Dynamic" ValidationGroup="val_busqueda" ControlToValidate="txt_totalRegistros"
                                            Text="Dato Obligatorio" CssClass="alert-danger" />
                                        </td>
                                        <td align="right" width="21%">
                                            <asp:Button ID="butBusca" runat="server" Text="Buscar" ValidationGroup="val_busqueda" CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" OnClick="butBusca_Click" />
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView ID="dgvLogs" runat="server" AllowPaging="true" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTable" Font-Size="10"
                                                 GridLines="None" PageSize="8" Width="100%" OnPageIndexChanging="dgvLogs_PageIndexChanging">
                                                <Columns>
                                                    <asp:BoundField DataField="FECHA_LOG" HeaderText="FECHA" SortExpression="Mame"/>
                                                    <asp:BoundField DataField="METODO_LOG" HeaderText="MÉTODO" SortExpression="Name" />
                                                    <asp:BoundField DataField="MENSAJE_LOG" HeaderText="MENSAJE" SortExpression="Name" />
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </center>

        </ContentTemplate>
    </asp:UpdatePanel>




</asp:Content>
