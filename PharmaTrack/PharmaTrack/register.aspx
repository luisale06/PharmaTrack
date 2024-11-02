<%@ Page Title="register" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.vb" Inherits="PharmaTrack._register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell BackColor="#0066cc" HorizontalAlign="Center" ForeColor="White" Height="600px" Width="300px">
                    <h1>¿Ya eres miembro?</h1>
                    <asp:Label Text="Ingresa tus datos personales para acceder a las funcionalidades" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="hpl_iniciosesion" Text="Iniciar sesión" NavigateUrl="~/logon.aspx" runat="server" class="btn btn-light btn-sm"></asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell BackColor="WhiteSmoke" HorizontalAlign="Center" Height="600px" Width="500px">
                    <h1>Registrar cuenta</h1>
                    <br />
                    <asp:Label Text="Nombre" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label Text="Primer apellido" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_PApellido" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label Text="Segundo apellido" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_SApellido" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label Text="Cédula" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_cedula" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label Text="Número de teléfono" runat="server"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_telefono" runat="server"></asp:TextBox>
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
                    <asp:LinkButton ID="btn_registro" Text="Registrarse" runat="server" class="btn btn-primary btn-sm"></asp:LinkButton>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </main>

</asp:Content>