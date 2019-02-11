﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMaster.Master" AutoEventWireup="true" CodeBehind="Company_reg.aspx.cs" Inherits="jobPortal.Company_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat=server>
    <div class="register-box">
        <div class="register-logo">
            <span>Register Your Company</span>
        </div>
        <div class="register-box-body">
            <div class="form-group has-feedback">
                <asp:TextBox ID="TxtcompanyName" runat="server" CssClass="form-control" placeholder="Company name *"></asp:TextBox>
                <span class="glyphicon glyphicon-home form-control-feedback"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" class="help-block" ErrorMessage="Enter Company Name" forecolor="#ff0000" ControlToValidate="TxtcompanyName"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group has-feedback">
                <textarea cols="20" rows="2" placeholder="Description" ID="TxtcompanyDesc" class="form-control" runat="server"></textarea>
              <span class="glyphicon glyphicon-info-sign form-control-feedback"></span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" class="help-block" ErrorMessage="Enter Description" forecolor="#ff0000" ControlToValidate="TxtcompanyDesc"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group has-feedback">
                <asp:TextBox ID="TxtcompanySite" runat="server" CssClass="form-control" placeholder="Company website"></asp:TextBox>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" class="help-block" ErrorMessage="Enter Company Name" forecolor="#ff0000" ControlToValidate="TxtcompanySite"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group has-feedback">
                <asp:TextBox ID="TxtcompanyEmail" runat="server" CssClass="form-control" placeholder="Company email *"></asp:TextBox>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                     <asp:RegularExpressionValidator ID="RegularExpessionFieldValidator6"  class="help-block" runat="server" ErrorMessage="Invalid Email" forecolor="#ff0000" ControlToValidate="TxtcompanyEmail" validationExpression ="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </div>
            <div class="form-group has-feedback">
                <asp:TextBox ID="TxtcompanyLoc" runat="server" CssClass="form-control" placeholder="Location"></asp:TextBox>
                <span class="glyphicon glyphicon-map-marker form-control-feedback"></span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="help-block" ErrorMessage="Enter company's location" forecolor="#ff0000" ControlToValidate="TxtcompanyLoc"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group has-feedback">
                <asp:TextBox ID="TxtcompanyNo" runat="server" CssClass="form-control" placeholder="Company number"></asp:TextBox>
                <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" class="help-block" ErrorMessage="Enter company's number" forecolor="#ff0000" ControlToValidate="TxtcompanyNo"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="Password" id="txtPwd" runat="server"> 
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="help-block" runat="server" ErrorMessage="Enter Password" forecolor="#ff0000" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="Re-type Password" id="txtRepwd" runat="server"> 
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:Comparevalidator ID="comparevalidatorpassword" class="help-block" runat="server" ErrorMessage="password and re-typed password must match" forecolor="#ff0000" ControlToValidate="txtRepwd" ControlToCompare ="txtPwd" Operator="Equal"></asp:Comparevalidator>

            </div>
            <div class="row">
                <div class="col-xs-4">
                    <asp:Button ID="companyReg" runat="server" Text="Register" class="btn btn-primary btn-block btn-flat" OnClick="companyReg_Click"/>
                    <%--<button type="submit" class="btn btn-primary btn-block btn-flat" id="companyReg" name="companyReg" onclick="companyReg_Click">Register</button>--%>
                </div>
            </div>
          
        </div>
    </div>
</form>

</asp:Content>
