<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.vb" Inherits="PharmaTrack._Main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <main>
        <div>
            <asp:LinkButton ID="BtnPerfil" CssClass="btn btn-cancel btn-circle" runat="server" OnClick="btn_Perfil_Click">
                <asp:Literal ID="ltl_perfil" runat="server" Text="<span class='glyphicon glyphicon-user icon-large'></span>"></asp:Literal>
            </asp:LinkButton>
            <br />
            <br />
            <asp:Panel runat="server" ID="pnl_MainAdmin" Visible="false">
                <asp:LinkButton ID="btn_Usuarios" CssClass="btn btn-cancel" runat="server" OnClick="btn_Usuarios_Click">
                    <asp:Literal ID="ltl_usuarios" runat="server" Text="<span class='glyphicon glyphicon-globe'></span> Usuarios"></asp:Literal>
                </asp:LinkButton>
                <asp:LinkButton ID="btn_Productos" CssClass="btn btn-cancel" runat="server" OnClick="btn_Productos_Click">
                    <asp:Literal ID="ltl_productos" runat="server" Text="<span class='glyphicon glyphicon-barcode'></span> Productos"></asp:Literal>
                </asp:LinkButton>
            </asp:Panel>

            <asp:Panel runat="server" ID="pnl_MainOperativo" Visible="false">
                <asp:LinkButton ID="btn_Facturas" CssClass="btn btn-cancel" runat="server" OnClick="btn_Facturas_Click">
                    <asp:Literal ID="ltl_facturas" runat="server" Text="<span class='glyphicon glyphicon-list-alt'></span> Facturas"></asp:Literal>
                </asp:LinkButton>
                <asp:LinkButton ID="btn_Estadisticas" CssClass="btn btn-cancel" runat="server" OnClick="btn_Estadisticas_Click">
                    <asp:Literal ID="ltl_estadisticas" runat="server" Text="<span class='glyphicon glyphicon-stats'></span> Estadísticas"></asp:Literal>
                </asp:LinkButton>
            </asp:Panel>
            
            <asp:Panel runat="server" ID="pnl_MainCliente" Visible="false">
                <asp:LinkButton ID="BtnResumen" CssClass="btn btn-cancel" runat="server" OnClick="BtnResumen_Click">
                    <asp:Literal ID="ltl_resumen" runat="server" Text="<span class='glyphicon glyphicon-usd'></span> Resumen"></asp:Literal>
                </asp:LinkButton>
                <asp:LinkButton ID="BtnRegistrarFactura" CssClass="btn btn-cancel" runat="server" OnClick="BtnRegistrarFactura_Click">
                    <asp:Literal ID="ltl_registrar_factura" runat="server" Text="<span class='glyphicon glyphicon-open-file'></span> Registrar Factura"></asp:Literal>
                </asp:LinkButton>
                <asp:LinkButton ID="BtnHistorial" CssClass="btn btn-cancel" runat="server" OnClick="BtnHistorial_Click">
                    <asp:Literal ID="ltl_historial" runat="server" Text="<span class='glyphicon glyphicon-th-list'></span> Historial"></asp:Literal>
                </asp:LinkButton>
                <asp:LinkButton ID="BtnCanjear" CssClass="btn btn-cancel" runat="server" OnClick="BtnCanjear_Click">
                    <asp:Literal ID="ltl_canjear" runat="server" Text="<span class='glyphicon glyphicon-shopping-cart'></span> Canjear"></asp:Literal>
                </asp:LinkButton>
            </asp:Panel>
            <br />
            <div class="horizontal-line"></div>
            <asp:MultiView ID="MultiViewMain" runat="server">
                <asp:View ID="view_Perfil" runat="server">
                    <h2>Perfil</h2>
                    <table width="60%">
                        <tr>
                            <td width="50%">
                                <div class="label-input">
                                    <asp:Label Text="Nombre*" runat="server" AssociatedControlID="txt_nombre"></asp:Label>
                                    <asp:TextBox ID="txt_nombre" runat="server" CssClass="form-control" Width="90%" Enabled="false" BackColor="White"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txt_nombre" ForeColor="Red" Font-Bold="true"
                                        ErrorMessage="Requerido" Display="Dynamic" runat="server" />
                                </div>
                                <div class="label-input">
                                    <asp:Label Text="Primer apellido*" runat="server" AssociatedControlID="txt_PApellido"></asp:Label>
                                    <asp:TextBox ID="txt_PApellido" runat="server" CssClass="form-control" Width="90%" Enabled="false" BackColor="White"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txt_PApellido" ForeColor="Red" Font-Bold="true"
                                        ErrorMessage="Requerido" Display="Dynamic" runat="server" />
                                </div>
                                <div class="label-input">
                                    <asp:Label Text="Segundo apellido" runat="server" AssociatedControlID="txt_SApellido"></asp:Label>
                                    <asp:TextBox ID="txt_SApellido" runat="server" CssClass="form-control" Width="90%" Enabled="false" BackColor="White"></asp:TextBox>
                                </div>
                            </td>
                            <td width="50%">
                                <div class="label-input">
                                    <asp:Label Text="Correo electrónico*" runat="server" AssociatedControlID="txt_correo"></asp:Label>
                                    <asp:TextBox ID="txt_correo" runat="server" CssClass="form-control" Width="90%" Enabled="false" BackColor="White"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txt_correo" ForeColor="Red" Font-Bold="true"
                                        ErrorMessage="Requerido" Display="Dynamic" runat="server" />
                                </div>
                                <div class="label-input">
                                    <asp:Label Text="Cédula*" runat="server" AssociatedControlID="txt_cedula"></asp:Label>
                                    <asp:TextBox ID="txt_cedula" runat="server" CssClass="form-control" Width="90%" Enabled="false" BackColor="White"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txt_cedula" ForeColor="Red" Font-Bold="true"
                                        ErrorMessage="Requerido" Display="Dynamic" runat="server" />
                                </div>
                                <div class="label-input">
                                    <asp:Label Text="Número de teléfono" runat="server" AssociatedControlID="txt_telefono"></asp:Label>
                                    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" Width="90%" Enabled="false" BackColor="White"></asp:TextBox>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Label ID="lbl_msj_error" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Panel ID="pnl_actualizarPerfil" runat="server">
                        <asp:LinkButton ID="btn_actualizarPerfil" runat="server" CssClass="btn btn-success" CausesValidation="false">
                            <asp:Literal ID="ltl_actualizarPerfil" runat="server" Text="<span class='glyphicon glyphicon-pencil'></span> Actualizar"></asp:Literal>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btn_borrarPerfil" runat="server" CssClass="btn btn-danger">
                            <asp:Literal ID="ltl_borrarPerfil" runat="server" Text="<span class='glyphicon glyphicon-trash'></span> Eliminar"></asp:Literal>
                        </asp:LinkButton>
                    </asp:Panel>
                    <asp:Panel ID="pnl_AceptCancel" runat="server" Visible="False">
                        <asp:LinkButton ID="btn_AceptarActualizacion" runat="server" CssClass="btn btn-info">
                            <asp:Literal ID="ltl_AceptarActualizacion" runat="server" Text="<span class='glyphicon glyphicon-ok'></span>"></asp:Literal>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btn_CancelarActualizacion" runat="server" CssClass="btn btn-cancel" CausesValidation="false">
                            <asp:Literal ID="ltl_CancelarActualizacion" runat="server" Text="<span class='glyphicon glyphicon-remove'></span>"></asp:Literal>
                        </asp:LinkButton>
                    </asp:Panel>
                </asp:View>

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
                    <p>Administra los productos inscritos en el programa de beneficios</p>
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
                    <img src="../Images/ImagenMedicos.png" alt="imagen" width="300" height="200" class="Imagen_resumen">
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
