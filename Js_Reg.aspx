<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_Reg.aspx.cs" Inherits="jobPortal.Js_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="register-box">
            <div class="register-logo">
                <span>Register</span>
            </div>
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <div class="register-box-body">
                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" placeholder="First Name *"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="help-block" ErrorMessage="Enter First Name" forecolor="#ff0000" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" placeholder="Last Name *"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="help-block" ErrorMessage="Enter Last Name" forecolor="#ff0000" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Id *"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    <asp:RegularExpressionValidator ID="RegularExpessionFieldValidator3"  class="help-block" runat="server" ErrorMessage="Invalid Email" forecolor="#ff0000" ControlToValidate="txtEmail" validationExpression ="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>

                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control" placeholder="User Id *"></asp:TextBox>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="help-block" runat="server" ErrorMessage="Enter User Id" forecolor="#ff0000" ControlToValidate="txtUserId" ></asp:RequiredFieldValidator>
                </div>
                <asp:Label ID="lblId" runat="server" Text=""></asp:Label>


                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Password *" id="txtPwd" runat="server">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" class="help-block" runat="server" ErrorMessage="Enter Password" forecolor="#ff0000" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
                </div>
                <asp:Label ID="lblPwd" runat="server" Text=""></asp:Label>


                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Re-type Password *" id="txtRepwd" runat="server">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:Comparevalidator ID="comparevalidatorpassword" class="help-block" runat="server" ErrorMessage="password and re-typed password must match" forecolor="#ff0000" ControlToValidate="txtRepwd" ControlToCompare ="txtPwd" Operator="Equal"></asp:Comparevalidator>
                </div>
                <asp:Label ID="lblRepwd" runat="server" Text=""></asp:Label>

                <div class="row">
                    <div class="col-xs-4">
                        <asp:Button ID="btnReg" runat="server" Text="Register" class="btn btn-primary btn-block btn-flat" OnClick="btnReg_Click" />
                    </div>
                </div>
            </div>
        </div>
        <
    </form>
</asp:Content>

