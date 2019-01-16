<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_feedback.aspx.cs" Inherits="jobPortal.Company_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">Feedback</h2>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label>Title</label>
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea cols="20" rows="2" id="txtDesc" class="form-control" runat="server"></textarea>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </form>
</asp:Content>
