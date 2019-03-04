<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_ForgotPassword.aspx.cs" Inherits="jobPortal.Company_ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">

        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
         <div class="form-group">
                            <label>Enter Your Email Id</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

    <div class="form-group">
                            <label>Please click to Send Code</label>
                        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSend_Click"  />
                        </div>
                    </div>
                    </div>
                </div>
            </div>

        </form>
</asp:Content>
