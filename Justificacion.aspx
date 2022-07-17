<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Justificacion.aspx.cs" Inherits="FESAJustificacion.Justificacion" %>

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
                                
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <label>
                                        Empresa:</label>


                                    <asp:DropDownList ID="ddl_empresa" runat="server" class="form-control" AutoPostBack="true"
                                        Width="95%" placeholder="Empresa" OnSelectedIndexChanged="ddl_empresa_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <label>
                                        Sucursal:</label>

                                    <asp:DropDownList ID="ddl_subEmpresa" runat="server" class="form-control"
                                        Width="95%" placeholder="SubEmpresa" AutoPostBack="true" OnSelectedIndexChanged="ddl_subEmpresa_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <label>
                                        Justificados:</label>
                                <asp:CheckBox ID="cbx_buscarJustificados" runat="server" Style="margin-top: 1%; width: 95%;"
                                               AutoPostBack="true" OnCheckedChanged="justificadosClick" Checked="false" />
                                    </div>
                        </asp:Panel>                                          
                        <hr />
                        <asp:Panel ID="pnlJustificacionLote" runat="server">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1">                                    
                                    </div>
                                <div class="col-lg-2 col-md-2 col-sm-2">
                                    <asp:Button ID="btnJustificar" OnClick="validaConsumosLoteClick" runat="server" Text="Justificar en lote"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" Enabled="false" />
                                    </div>                                
                                <div class="col-lg-9 col-md-9 col-sm-9">
                                    </div>
                                
                                </div>
                            </asp:Panel>
                        <asp:Panel ID="pn_datos" runat="server">
                            <div class="row">
                                <div class="col-sm-1">
                                </div>
                                <div class="col-sm-10">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="3" CssClass="table table-hover table-striped pCabTabla"
                                                Font-Size="8" GridLines="None" ID="gvJustificaciones" PageSize="100" runat="server" Width="100%"
                                                OnPageIndexChanging="gvJustificacionesPageIndexChanging"
                                                EmptyDataText="No se encontraron registros de consumos" >
                                                <Columns>
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:CheckBox ID="cb_selectHeader" runat="server" AutoPostBack="true" OnCheckedChanged="cb_selectHeader_ChckedChanged" />                                                                                                                                                             
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                    <asp:CheckBox ID="cb_select" runat="server" AutoPostBack="true" OnCheckedChanged="cb_select_ChckedChanged" />                                                                                                         
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label Text="ID" runat="server" AutoPostBack="true" />
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                        <asp:Label ID="lbl_consumoId" runat="server" Text='<%#Bind("CODIGO_CON")%>'/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>                                                    
                                                    <asp:BoundField DataField="NOMBREARCHIVO_CON" HeaderText="NOMBRE ARCHIVO" SortExpression="Name" />
                                                    <asp:BoundField DataField="FECHA_CON" HeaderText="FECHA CONSUMO" SortExpression="Name" />
                                                    <asp:BoundField DataField="FORMATO_CON" HeaderText="FORMATO" SortExpression="Name" />
                                                    <asp:BoundField DataField="TIPO_CON" HeaderText="RELEASE MODEL" SortExpression="Name" />
                                                    <asp:BoundField DataField="COLOR_CON" HeaderText="COLOR/BN" SortExpression="Name" />
                                                    <asp:BoundField DataField="HOJAS_CON" HeaderText="N° DE HOJAS" SortExpression="Name" />
                                                    <asp:BoundField DataField="COSTO_CSBE" HeaderText="COSTO INDIVIDUAL" SortExpression="Name"  DataFormatString="{0:n}" />
                                                    <asp:BoundField DataField="COSTO_DOCUMENTO" HeaderText="COSTO DOCUMENTO" SortExpression="Name"  DataFormatString="{0:n}"/>
                                                    <asp:BoundField DataField="DESCRIPCION_COS" HeaderText="DESCRIPCIÓN COBRO" SortExpression="Name" />                                                                                                        
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label text="MOTIVO JUSTIFICACIÓN" runat="server"/>
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                        <asp:Label ID="lbl_motivo" runat="server" Text='<%#Bind("JUSTIFICA_MOTIVO_CON")%>'/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>  
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label text="COSTO ASUMIDO POR EL EMPLEADO" runat="server"/>
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                        <asp:Label ID="lbl_subsidiado" runat="server" Text='<%#Eval("SUBSIDIADO_CON").ToString() == "True" ? "No":"Si" %>'/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>                                                    
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label text="" runat="server"/>
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                         <asp:Button ID="btnJustifica" OnClick="justificaClick" runat="server" Text="Justificar"
                                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" Enabled="false"/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>                                                        
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-1">
                                </div>
                            </div>
                            <div class="col-lg-1 col-md-1 col-sm-1">
                            </div>                            
                            <div class="col-lg-1 col-md-1 col-sm-1">
                            </div>
                        </asp:Panel>
                        <br />
                        <hr />
                        <asp:Panel ID="pnlCostos" runat="server">
                            <div class="row">
                                <div class="col-sm-1">
                                </div>
                                <div class="col-sm-10">
                        <asp:Label  runat="server" Text="Valores a pagar:" Font-Size="Large"/>
                                    </div></div></asp:Panel>
                        <hr />
                        <asp:Panel ID="pnlCobro" runat="server">
                            <div class="row">
                                <div class="col-sm-1">
                                </div>
                                <div class="col-sm-10">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <asp:GridView AllowPaging="True" AutoGenerateColumns="false" CellPadding="2" CssClass="table table-hover table-striped pCabTabla"
                                                Font-Size="10" GridLines="None" ID="gv_costo" PageSize="10" runat="server" 
                                                EmptyDataText="No existen costos registrados" >
                                                <Columns>                                                                                                      
                                                    <asp:BoundField DataField="DESCRIPCION_COS" HeaderText="Descripción" SortExpression="Name" />
                                                    <asp:BoundField DataField="CANTIDAD_DOCUMENTOS" HeaderText="N° de hojas" SortExpression="Name" />
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label text="Costo Individual" runat="server"/>
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                        <asp:Label ID="lbl_costoIndividual" runat="server" Text='<%#Eval("COSTO_INDIVIDUAL", "{0:c}")%>'/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>                                                    
                                                    <asp:TemplateField>  
                                                        <HeaderTemplate>
                                                            <asp:Label text="Costo Total" runat="server"/>
                                                        </HeaderTemplate>
                                                    <ItemTemplate>  
                                                        <asp:Label ID="lbl_costoTota" runat="server" Text='<%#Eval("COSTO_DOCUMENTO", "{0:c}")%>'/>
                                                    </ItemTemplate>   
                                                    </asp:TemplateField>                                                                                                        
                                                </Columns>
                                                <PagerStyle CssClass="pagination-ys" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <br />
                                          <div class="row text-center">
                                    <div class="col-md-1 "></div>
                                    <div class="col-md-9 col-md-10 col-xs-10">
                                        <div class="container-fluid">
                                            <div class="row" style="text-align: end;">
                                                Total Documentos:                                                                         
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-1 col-md-1 col-xs-1" style="text-align: left;">
                                        <asp:Label ID="txt_totalDocumentos" runat="server" Text=""></asp:Label></div>
                                    <div class="col-md-1" style="text-align: left;">
                                        <asp:Label ID="lbl_row_count" class="hidden" runat="server" Text="CONTEO ROWS"></asp:Label></div>
                                </div>
                                     <br />
                                          <div class="row text-center">
                                    <div class="col-md-1 "></div>
                                    <div class="col-md-9 col-md-10 col-xs-10">
                                        <div class="container-fluid">
                                            <div class="row" style="text-align: end;">
                                                Costo Total:                                                                         
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-1 col-md-1 col-xs-1" style="text-align: left;">
                                        <asp:Label ID="txt_costoTotal" runat="server" Text=""></asp:Label></div>
                                    <div class="col-md-1" style="text-align: left;">
                                        <asp:Label ID="Label2" class="hidden" runat="server" Text="CONTEO ROWS"></asp:Label></div>
                                </div>
                                </div>
                                <div class="col-sm-1">
                                </div>
                            </div>

                            <div class="col-lg-1 col-md-1 col-sm-1">
                            </div>                            
                            <div class="col-lg-1 col-md-1 col-sm-1">
                            </div>                                                           
                        </asp:Panel>                     
                    </ContentTemplate>
                </asp:UpdatePanel>    
                <asp:HiddenField ID="hf_justifica" runat="server" /> 
                <cc1:ModalPopupExtender ID="mp_motivoJustifica" runat="server" TargetControlID="hf_justifica"
                    PopupControlID="ud_motivo"
                    Enabled="True">
                </cc1:ModalPopupExtender>
                <asp:UpdatePanel ID="ud_motivo" runat="server"  style="width:300px;height:200px;top: 8px !important;">
                    <ContentTemplate>
                        <center >                                                        
                             <asp:Panel ID="pnlMotivo" runat="server" Style="background: white; border: outset; box-shadow: 2px 2px 5px #999; border-radius: 10px;" >                                
                                  <div class="row" style="margin-top: 20px !important;">                                                      
                                     <div class="col-lg-1 col-md-1 col-sm-1">
                                         </div>                                     
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                            <label style="text-align:left">
                                        Motivo:</label>                    
                                        </div>
                                      </div>                                                                      
                                    <div class="row" >
                                     <div class="col-lg-1 col-md-1 col-sm-1">
                                         </div>                                     
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <asp:TextBox ID="txt_motivo" runat="server" MaxLength="100" CssClass="form-control" Style="text-transform: uppercase;margin-bottom:20px" Width="235px"></asp:TextBox>                                   
                                </div>
                                     <div class="col-lg-5 col-md-5 col-sm-5">
                                         </div>
                                     </div>
                                 <div class="row" style="margin-bottom: 20px !important"> 
                                     <div class="col-lg-1 col-md-1 col-sm-1">
                                         </div>
                                   <div class="col-lg-6 col-md-6 col-sm-6">
                                    <label>
                                      Costo asumido por el empleado:</label>
                                <asp:CheckBox ID="cb_subsidiado" runat="server" Style="margin-top: 1%; width: 95%;"
                                               Checked="false" />
                                    </div>
                                     </div>
                                  <div class="row" style="margin-bottom:20px">                                                                
                                      <div class="col-lg-4 col-md-4 col-sm-4">
                                    </div>
                                <div class="col-lg-3 col-md-3 col-sm-3">
                         <asp:Button ID="btnGrabar" OnClick="justificaLote" runat="server" Text="Confirmar"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" />
                                    </div>
                                <div class="col-lg-3 col-md-3 col-sm-3">
                         <asp:Button ID="btnCancelar" OnClick="cancelaLoteClick" runat="server" Text="Cancelar"
                                                CssClass="btn btn-sm btn-primary" Style="margin-top: 1%;" />
                                    </div>
                                      
                                </div>
                                 </asp:Panel>                         
                        </center>
                    </ContentTemplate>
                </asp:UpdatePanel>            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

