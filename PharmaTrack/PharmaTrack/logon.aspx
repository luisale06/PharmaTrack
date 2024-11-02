<%@ Page Title="logon" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="logon.aspx.vb" Inherits="PharmaTrack._logon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell BackColor="#0066cc" HorizontalAlign="Center" ForeColor="White" Height="600px" Width="300px">
                    <h1>¡Bienvenido!</h1>
                    <asp:Label Text="Si aún no tienes una cuenta, regístrate ahora" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="hpl_registro" Text="Registrarse" NavigateUrl="~/register.aspx" runat="server" class="btn btn-light btn-sm"></asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell BackColor="LightGray" HorizontalAlign="Center" Height="600px" Width="500px">
                    <h1>Iniciar sesión</h1>
                    <br />
                    <asp:Label Text="Correo electrónico" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_correo" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label Text="Contraseña" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_contraseña" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:HyperLink ID="hpl_iniciosesion" Text="Iniciar sesión" NavigateUrl="~/pages/Main.aspx" runat="server" class="btn btn-primary btn-sm"></asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </main>

</asp:Content>