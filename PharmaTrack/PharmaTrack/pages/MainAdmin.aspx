<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainAdmin.aspx.vb" Inherits="PharmaTrack._MainAdmin" %>

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
                        <asp:LinkButton ID="btn_Usuarios" CssClass="btn btn-cancel" runat="server" OnClick="btn_Usuarios_Click" Width="90%">
                            <asp:Literal ID="ltl_usuarios" runat="server" Text="<span class='glyphicon glyphicon-user'></span> Usuarios"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                    <td width="25%">
                        <asp:LinkButton ID="btn_Facturas" CssClass="btn btn-cancel" runat="server" OnClick="btn_Facturas_Click" Width="90%">
                            <asp:Literal ID="ltl_facturas" runat="server" Text="<span class='glyphicon glyphicon-list-alt'></span> Facturas"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                    <td width="25%">
                        <asp:LinkButton ID="btn_Productos" CssClass="btn btn-cancel" runat="server" OnClick="btn_Productos_Click" Width="90%">
                            <asp:Literal ID="ltl_productos" runat="server" Text="<span class='glyphicon glyphicon-barcode'></span> Productos"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                    <td width="25%">
                        <asp:LinkButton ID="btn_Estadisticas" CssClass="btn btn-cancel" runat="server" OnClick="btn_Estadisticas_Click" Width="90%">
                            <asp:Literal ID="ltl_estadisticas" runat="server" Text="<span class='glyphicon glyphicon-stats'></span> Estadísticas"></asp:Literal>
                        </asp:LinkButton>
                    </td>
                </tr>
            </table>
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
