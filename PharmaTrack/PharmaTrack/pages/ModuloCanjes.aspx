<%@ Page Title="Pharmatrack Farmacia" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModuloCanjes.aspx.vb" Inherits="PharmaTrack._ModuloCanjes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField ID="hdf_Farmacia" runat="server"/>
    <br />
    <br />
    <br />
    <br />
    <main>
        <div>
            <h1>PharmaTrack - Farmacias</h1>
            <br />
            <asp:Label ID="lbl_NombreMain" runat="server" Font-Bold="true" Font-Size="Large" ></asp:Label>
            
            <br />
            <br />
            <asp:LinkButton ID="btn_Usuarios" CssClass="btn btn-cancel" runat="server" OnClick="btn_Usuarios_Click">
                <asp:Literal ID="ltl_usuarios" runat="server" Text="<span class='glyphicon glyphicon-search'></span> Consulta Clientes"></asp:Literal>
            </asp:LinkButton>
            <asp:LinkButton ID="btn_Historial" CssClass="btn btn-cancel" runat="server" OnClick="btn_Historial_Click">
                <asp:Literal ID="ltl_Historial" runat="server" Text="<span class='glyphicon glyphicon-time'></span> Historial por cliente"></asp:Literal>
            </asp:LinkButton>
            <br />
            <div class="horizontal-line"></div>
            <asp:MultiView ID="MultiViewMain" runat="server">
                <asp:View ID="view_Usuarios" runat="server">
                    <h2>Gestión de Usuarios</h2>
                    <p>Administra los usuarios registrados en la plataforma</p>
                    <div class="label-input">
                        <asp:Label ID="lbl_FiltroUsuarios" AssociatedControlID="txt_filtroUsuarios" runat="server" Text="Filtro" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txt_filtroUsuarios" runat="server" CssClass="form-control" Width="30%"></asp:TextBox>
                    </div>
                    <asp:LinkButton ID="lnk_BuscarUsuario" CssClass="btn btn-iica-blue-light" runat="server">
                        <span class="glyphicon glyphicon-search"></span>
                        <asp:Literal ID="ltl_buscarUsuario" runat="server" Text="Buscar"></asp:Literal>
                    </asp:LinkButton>
                    <asp:LinkButton ID="lnk_limpiarUsuario" CssClass="btn btn-iica-blue-light" Text="Limpiar Busqueda" OnClick="lnk_limpiarUsuario_Click" runat="server">
                        <span class="glyphicon glyphicon-zoom-out"></span>
                        <asp:Literal ID="ltl_limpiar_busquedaUsuario" runat="server" Text="Limpiar Busqueda"></asp:Literal>
                    </asp:LinkButton>
                    <p>Informacion del cliente</p>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="gv_UsuariosFarmacia" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" AllowSorting="True"
                                DataSourceID="SqlDataSourceUsuariosTodos" CssClass="table table-bordered table-hover  margin-top-20"
                                AllowPaging="True" PageSize="10">
                                <Columns>
                                    <asp:TemplateField HeaderText="Nombre">
                                        <ItemTemplate>
                                            <%# Eval("Nombre") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Primer Apellido">
                                        <ItemTemplate>
                                            <%# Eval("Apellido1") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cedula">
                                        <ItemTemplate>
                                            <%# Eval("Cedula") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Correo">
                                        <ItemTemplate>
                                            <%# Eval("Correo") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Telefono">
                                        <ItemTemplate>
                                            <%#Eval("Telefono") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceUsuariosTodos" runat="server"
                                ConnectionString="<%$ ConnectionStrings:PharmaConnectionString %>"
                                SelectCommand="Get_Usuarios" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter Name="Operacion" Type="Int32" DefaultValue="2" />
                                    <asp:ControlParameter Name="Filtro" ControlID="txt_filtroUsuarios" DefaultValue=" " PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:View>

                <asp:View ID="view_Historial" runat="server">
                    <asp:Panel runat="server" Width="80%">
                        <h2>Historial por Cliente</h2>
                        <p>Consulte los canjes realizados por un cliente especifico</p>
                        <div class="label-input">
                            <asp:Label ID="lbl_Filtro" AssociatedControlID="txt_filtro" runat="server" Text="Filtro" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txt_filtro" runat="server" CssClass="form-control" Width="30%"></asp:TextBox>
                        </div>
                    </asp:Panel>
                </asp:View>
            </asp:MultiView>
        </div>
    </main>

</asp:Content>
