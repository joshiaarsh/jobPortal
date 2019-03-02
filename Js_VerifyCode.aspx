<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_VerifyCode.aspx.cs" Inherits="jobPortal.Js_VerifyCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">Verify Account</h2>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Enter Code</label>
                            <asp:TextBox ID="txtCode" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        
                    </div>
                </div>
                <div class="box-footer">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Verify" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-4"></div>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Please click to re-send Code</label>
                        <asp:Button ID="btnResend" runat="server" Text="Resend" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnResend_Click"/>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </form>
</asp:Content>
