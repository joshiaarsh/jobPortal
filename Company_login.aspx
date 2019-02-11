<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMaster.Master" AutoEventWireup="true" CodeBehind="Company_login.aspx.cs" Inherits="jobPortal.Company_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="register-box">
            <div class="register-logo">
                <span>Login</span>
            </div>
            <div class="register-box-body">
                <div class="form-group has-feedback">
                    <%--<input type="text" class="form-control" placeholder="User ID">--%>
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control" placeholder="Company Email Id"></asp:TextBox>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" class="help-block" ErrorMessage="Enter email" ControlToValidate="txtId"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Password" id="txtpwd" runat="server">
                    <%--<asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>--%>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="help-block" ErrorMessage="Enter password" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>

                </div>

                <div class="row">
                    <div class="col-xs-8">
                        <a href="#">Forgot password</a>
                    </div>
                    <div class="col-xs-4">
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
