<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.vb" Inherits="PharmaTrack._Main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <main>
        <div>
            <table runat="server" width="100%">
                <tr>
                    <td width="25%">
                        <asp:LinkButton ID="BtnResumen" CssClass="btn btn-cancel" runat="server" OnClick="BtnResumen_Click" Width="90%">
                            <asp:Literal ID="ltl_resumen" runat="server" Text="<span class='glyphicon glyphicon-usd'></span> Resumen"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                    <td width="25%">
                        <asp:LinkButton ID="BtnRegistrarFactura" CssClass="btn btn-cancel" runat="server" OnClick="BtnRegistrarFactura_Click" Width="90%">
                            <asp:Literal ID="ltl_registrar_factura" runat="server" Text="<span class='glyphicon glyphicon-open-file'></span> Registrar Factura"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                    <td width="25%">
                        <asp:LinkButton ID="BtnHistorial" CssClass="btn btn-cancel" runat="server" OnClick="BtnHistorial_Click" Width="90%">
                            <asp:Literal ID="ltl_historial" runat="server" Text="<span class='glyphicon glyphicon-th-list'></span> Historial"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                    <td width="25%">
                        <asp:LinkButton ID="BtnCanjear" CssClass="btn btn-cancel" runat="server" OnClick="BtnCanjear_Click" Width="90%">
                            <asp:Literal ID="ltl_canjear" runat="server" Text="<span class='glyphicon glyphicon-shopping-cart'></span> Canjear"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="ViewResumen" runat="server">
                    <h2>Resumen</h2>
                    <p>Aquí puedes ver  tu balance actual de puntos y próximos canjes disponibles</p>
                    <table width="100%">
                        <tr>
                            <td width="30%">

                            </td>
                            <td width="40%">
                                <asp:Panel runat="server" ID="PanelTotalPuntos" CssClass="panel-redondeado">
                                    <h3>Total de puntos:</h3>
                                    <asp:Label runat="server" ForeColor="Green" Text="*Puntos*" Font-Size="30px"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td width="30%">

                            </td>
                        </tr>
                    </table>
                </asp:View>

                <asp:View ID="ViewRegistrarFactura" runat="server">
                    <asp:Panel runat="server" Width="65%" CssClass="panel-redondeado-facturas">
                        <h2>Registrar Factura</h2>
                        <p>Complete el siguiente formulario para registrar un nueva factura</p>
                        <table width="100%">
                            <tr>
                                <td width="50%">
                                    <div class="label-input">
                                        <asp:Label runat="server" AssociatedControlID="ddl_Farmacia" Text="Farmacia"></asp:Label>
                                        <asp:DropDownList runat="server" ID="ddl_farmacia" CssClass="form-control" Width="90%"></asp:DropDownList>
                                    </div>
                                </td>
                                <td width="50%">
                                    <div class="label-input">
                                        <asp:Label runat="server" Text="Fecha de Compra" Font-Bold="true" ForeColor="#006699" AssociatedControlID="txt_FechaCompra"></asp:Label>
                                        <asp:TextBox runat="server" ID="txt_FechaCompra" CssClass="form-control" Width="90%" type="date" BackColor="White"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <div class="label-input">
                                        <asp:Label runat="server" AssociatedControlID="txt_NumeroFactura" Text="Número de Factura"></asp:Label>
                                        <asp:TextBox runat="server" ID="txt_NumeroFactura" CssClass="form-control" Width="90%"></asp:TextBox>
                                    </div>
                                </td>
                                <td width="50%">
                                    <div class="label-input">
                                        <asp:Label runat="server" AssociatedControlID="ddl_Producto" Text="Producto"></asp:Label>
                                        <asp:DropDownList runat="server" ID="ddl_Producto" CssClass="form-control" Width="90%"></asp:DropDownList>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <div class="label-input">
                                        <asp:Label runat="server" AssociatedControlID="txt_Cantidad" Text="Cantidad"></asp:Label>
                                        <asp:TextBox runat="server" ID="txt_Cantidad" CssClass="form-control" Width="90%"></asp:TextBox>
                                    </div>
                                </td>
                                <td width="50%">
                                    <div class="label-input">
                                        <asp:Label runat="server" Text="Imagen de la factura" AssociatedControlID="txt_ImagenFactura"></asp:Label>
                                        <asp:TextBox runat="server" ID="txt_ImagenFactura" CssClass="form-control" Width="90%"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>

                <asp:View ID="ViewHistorial" runat="server">
                    <h2>Historial</h2>
                    <p>Revisa tus compras registradas y puntos acumulados con esas compras</p>

                    <asp:GridView runat="server" >
                        <Columns>
                            <asp:TemplateField HeaderText="Medicamento">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text="Nombre" Font-Bold="true"></asp:Label>
                                    <br />
                                    <asp:Label runat="server" Text="Fecha"></asp:Label>
                                    <asp:Label runat="server" Text="Farmacia"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Puntos">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text="Puntos" ForeColor="Green"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:View>

                <asp:View ID="ViewCanjear" runat="server">
                    <h2>Canjear</h2>
                    <p>Seleccioma un producto para canjear con tus puntos acumulados</p>
                </asp:View>
            </asp:MultiView>
        </div>
    </main>

</asp:Content>
