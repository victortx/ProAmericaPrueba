<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProAmericaPrueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <p class="bg-primary">
            <asp:Literal ID="alertMessage" runat="server" />
            <asp:ValidationSummary ID="valForm" runat="server" CssClass="bg-success" HeaderText="Formulario valido"/>
        </p>
        <form method="post"> 
              <div class="mb-3">
                <label class="form-label">Correo Electronico</label>
                <asp:TextBox type="email" CssClass="form-control" ID="inputEmail" runat="server" />
                <asp:RequiredFieldValidator ID="rqEmail" runat="server" CssClass="bg-error" ControlToValidate="inputEmail" ValidationGroup="valForm" Display="Dynamic" ErrorMessage="Ingrese el correo electronico" />
              </div>
              <div class="mb-3">
                <label class="form-label">Contraseña</label>
                <asp:TextBox type="password" CssClass="form-control" ID="inputPassword" runat="server" />
                <asp:RequiredFieldValidator ID="rqPassword" runat="server" CssClass="bg-error" ControlToValidate="inputPassword" ErrorMessage="Ingrese la contraseña" />
              </div>
              <asp:Button type="submit" class="btn btn-primary" OnClick="login_btn" runat="server" Text="Login"/>
        </form>
    </div>
</asp:Content>
