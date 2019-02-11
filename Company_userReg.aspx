<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMaster.Master" AutoEventWireup="true" CodeBehind="Company_userReg.aspx.cs" Inherits="jobPortal.Company_userReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="register-box">
            <div class="register-logo">
                <span>Register Your User</span>
            </div>
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <div class="register-box-body">
                <div class="form-group has-feedback">
                    <select class="form-control" id="userRole" name="userRole" runat="server">
                        <option>Select Role</option>
                        <option>Post Manager</option>
                        <option>Recurter</option>
                        <option>Other</option>
                    </select>
                </div>

                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Id"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="help-block" ErrorMessage="Enter Email" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                </div>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>



                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control" placeholder="User Id"></asp:TextBox>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="help-block" ErrorMessage="Enter User Id" ControlToValidate="txtUserId"></asp:RequiredFieldValidator>

                </div>
                <asp:Label ID="lblId" runat="server" Text=""></asp:Label>


                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Password" id="txtPwd" runat="server">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" class="help-block" ErrorMessage="Enter Password" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>

                </div>
                <asp:Label ID="lblPwd" runat="server" Text=""></asp:Label>


                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Re-type Password" id="txtRepwd" runat="server">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" class="help-block" ErrorMessage="Enter Re-Password" ControlToValidate="txtRepwd"></asp:RequiredFieldValidator>

                </div>
                <asp:Label ID="lblRepwd" runat="server" Text=""></asp:Label>

                <div class="row">
                    <div class="col-xs-4">
                        <asp:Button ID="btnReg" runat="server" Text="Register" class="btn btn-primary btn-block btn-flat" OnClick="btnReg_Click" />
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <span>Already have Account?  </span>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>

    </form>
</asp:Content>
