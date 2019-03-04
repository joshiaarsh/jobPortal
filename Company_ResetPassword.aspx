<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_ResetPassword.aspx.cs" Inherits="jobPortal.Company_ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">Reset Password</h2>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">

                        <asp:Label ID="lbl_session" runat="server"  Visible="false"></asp:Label>

            <div class="form-group">
                            <label>Enter New Passowrd</label>
                            <asp:TextBox ID="txtNewPwd" runat="server"  TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
            <div class="form-group">
                            <label>Confirm Passowrd</label>
                            <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>

            <div class="form-group">
                            
                        <asp:Button ID="btnResetPwd" runat="server" Text="Reset Password" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnResetPwd_Click" />
                </div>

                <div class="form-group">              
                        <asp:Label ID="lblmsg" runat="server"  Visible="false"></asp:Label>
                    </div>

              <div class="row">
                    <div class="col-xs-8">
                        <a href="Company_login.aspx">Click Here to Login</a>
                    </div>

                        </div>
                    </div>
                </div>
                </div>


            </div>
        </form>

</asp:Content>
