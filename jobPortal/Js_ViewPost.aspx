<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_ViewPost.aspx.cs" Inherits="jobPortal.Js_ViewPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">View Job Post</h2>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Post Header</label>
                            <asp:Label ID="lblHeader" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <asp:Label ID="lblDesc" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>Location</label>
                            <asp:Label ID="lblLoc" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Field</label>
                            <asp:Label ID="lblField" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>Job Type</label>
                            <asp:Label ID="lblType" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>Salary</label>
                            <asp:Label ID="lblSal" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnCancel_Click" />
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnApply" runat="server" Text="Apply" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnApply_Click" />
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>
        </div>
    </form>

</asp:Content>
