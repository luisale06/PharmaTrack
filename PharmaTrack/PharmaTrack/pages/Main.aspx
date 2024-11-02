<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.vb" Inherits="PharmaTrack._Main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div>
            <table runat="server" width="100%">
                <tr>
                    <td width="25%">
                        <asp:Button ID="BtnResumen" runat="server" Text="Resumen" OnClick="BtnResumen_Click" Width="90%"/>
                    </td>
                    <td width="25%">
                        <asp:Button ID="BtnRegistrarFactura" runat="server" Text="Registrar Factura" OnClick="BtnRegistrarFactura_Click" Width="90%"/>
                    </td>
                    <td width="25%">
                        <asp:Button ID="BtnHistorial" runat="server" Text="Historial" OnClick="BtnHistorial_Click" Width="90%"/>
                    </td>
                    <td width="25%">
                        <asp:Button ID="BtnCanjear" runat="server" Text="Canjear" OnClick="BtnCanjear_Click" Width="90%"/>
                    </td>
                </tr>
            </table>
            <br />
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
                                <asp:Panel runat="server" BackColor="LightGray" HorizontalAlign="Center">
                                    <h2>Total de puntos</h2>
                                    <asp:Label runat="server" ForeColor="Green" Text="*Puntos*"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td width="30%">

                            </td>
                        </tr>
                    </table>
                </asp:View>

                <asp:View ID="ViewRegistrarFactura" runat="server">
                    <asp:Panel runat="server" BackColor="LightGray" Width="50%">
                        <h2>Registrar Factura</h2>
                        <p>Complete el siguiente formulario para registrar un nueva factura</p>
                        <table width="100%">
                            <tr>
                                <td width="50%">
                                    <asp:Label runat="server" AssociatedControlID="ddl_Farmacia" Text="Farmacia"></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddl_farmacia" Width="90%"></asp:DropDownList>
                                </td>
                                <td width="50%">
                                    <asp:Label runat="server" AssociatedControlID="txt_FechaCompra" Text="Fecha de Compra"></asp:Label>
                                    <asp:TextBox runat="server" ID="txt_FechaCompra" Width="90%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <asp:Label runat="server" AssociatedControlID="txt_NumeroFactura" Text="Número de Factura"></asp:Label>
                                    <asp:TextBox runat="server" ID="txt_NumeroFactura" Width="90%"></asp:TextBox>
                                </td>
                                <td width="50%">
                                    <asp:Label runat="server" AssociatedControlID="ddl_Producto" Text="Producto"></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddl_Producto" Width="90%"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <asp:Label runat="server" AssociatedControlID="txt_Cantidad" Text="Cantidad"></asp:Label>
                                    <asp:TextBox runat="server" ID="txt_Cantidad" Width="90%"></asp:TextBox>
                                </td>
                                <td width="50%">
                                    <asp:Label runat="server" Text="Imagen de la factura"></asp:Label>
                                    <asp:TextBox runat="server" ID="txt_ImagenFactura" Width="90%"></asp:TextBox>
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
