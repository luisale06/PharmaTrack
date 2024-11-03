<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainAdmin.aspx.vb" Inherits="PharmaTrack._MainAdmin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div>
            <table runat="server" width="100%">
                <tr>
                    <td width="25%">
                        <asp:Button ID="btn_Usuarios" runat="server" Text="Usuarios" OnClick="btn_Usuarios_Click" Width="90%"/>
                    </td>
                    <td width="25%">
                        <asp:Button ID="btn_Facturas" runat="server" Text="Facturas" OnClick="btn_Facturas_Click" Width="90%"/>
                    </td>
                    <td width="25%">
                        <asp:Button ID="btn_Productos" runat="server" Text="Productos" OnClick="btn_Productos_Click" Width="90%"/>
                    </td>
                    <td width="25%">
                        <asp:Button ID="btn_Estadisticas" runat="server" Text="Estadísticas" OnClick="btn_Estadisticas_Click" Width="90%"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="view_Usuarios" runat="server">
                    <h2>Gestión de Usuarios</h2>
                    <p>Administra los usuarios registrados en la plataforma</p>
                </asp:View>

                <asp:View ID="view_Facturas" runat="server">
                    <asp:Panel runat="server" Width="50%">
                        <h2>Aprobación de Facturas</h2>
                        <p>Revisa y aprueba las facturas pendientes</p>
                        <asp:Label runat="server" AssociatedControlID="txt_Filtro" Text="Filtro"></asp:Label>
                        <asp:TextBox runat="server" ID="txt_Filtro" Width="90%"></asp:TextBox>
                    </asp:Panel>
                </asp:View>

                <asp:View ID="view_Productos" runat="server">
                    <h2>Gestión de Productos</h2>
                    <p>Administra los productos disponibles para canjes</p>

                    
                </asp:View>

                <asp:View ID="view_Estadisticas" runat="server">
                    <h2>Análisis Estadístico</h2>
                    <p>Visualiza las estadísticas clave de la plataforma</p>

                    <table width="100%">
                        <tr>
                            <td width="50%" halign="center">
                                <asp:Panel runat="server" BackColor="LightGray" HorizontalAlign="Center">
                                    <h2>Productos más Canjeados</h2>
                                </asp:Panel>
                            </td>
                            <td width="50%">
                                <asp:Panel runat="server" BackColor="LightGray" HorizontalAlign="Center">
                                    <h2>Farmacias con más Compras</h2>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>

                </asp:View>
            </asp:MultiView>
        </div>
    </main>

</asp:Content>
