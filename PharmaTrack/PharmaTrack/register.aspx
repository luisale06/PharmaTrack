﻿<%@ Page Title="register" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.vb" Inherits="PharmaTrack._register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <div class="form-wrapper">
        <asp:Table runat="server">
            <asp:TableRow Width="50%">
                <asp:TableCell BackColor="#006699" HorizontalAlign="Center" ForeColor="White" Height="600px" Width="50%">
                    <h1>¿Ya eres miembro?</h1>
                    <asp:Label Text="Ingresa tus datos personales para acceder a las funcionalidades" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="hpl_iniciosesion" Text="Iniciar sesión" NavigateUrl="~/logon.aspx" runat="server" CssClass="btn btn-cancel"></asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell BackColor="White" HorizontalAlign="Center" Height="600px" Width="50%">
                    <h1>Registrar cuenta</h1>
                    <div class="label-input">
                        <asp:Label Text="Nombre" runat="server" AssociatedControlID="txt_nombre"></asp:Label>
                        <asp:TextBox ID="txt_nombre" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <div class="label-input">
                        <asp:Label Text="Primer apellido" runat="server" AssociatedControlID="txt_PApellido"></asp:Label>
                        <asp:TextBox ID="txt_PApellido" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <div class="label-input">
                        <asp:Label Text="Segundo apellido" runat="server" AssociatedControlID="txt_SApellido"></asp:Label>
                        <asp:TextBox ID="txt_SApellido" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <div class="label-input">
                        <asp:Label Text="Cédula" runat="server" AssociatedControlID="txt_cedula"></asp:Label>
                        <asp:TextBox ID="txt_cedula" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <div class="label-input">
                        <asp:Label Text="Número de teléfono" runat="server" AssociatedControlID="txt_telefono"></asp:Label>
                        <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <div class="label-input">
                        <asp:Label Text="Correo electrónico" runat="server" AssociatedControlID="txt_correo"></asp:Label>
                        <asp:TextBox ID="txt_correo" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <div class="label-input">
                        <asp:Label Text="Contraseña" runat="server" AssociatedControlID="txt_contraseña"></asp:Label>
                        <asp:TextBox ID="txt_contraseña" runat="server" CssClass="form-control" Width="90%"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <asp:HyperLink ID="hpl_registro" Text="Registrarse" NavigateUrl="~/pages/Main.aspx" runat="server" CssClass="btn btn-primary"></asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</asp:Content>