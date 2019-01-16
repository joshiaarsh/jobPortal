<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_ViewProfile.aspx.cs" Inherits="jobPortal.Js_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">View Profile</h2>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>First Name</label>
                            <asp:Label ID="lblFname" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <label>Highest Education</label>
                            <asp:Label ID="lblEdu" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>Any Experince?</label>
                            <asp:Label ID="lblExp" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <%--<div class="form-group">
                            <label>Upload your Resume:</label>
                            <asp:FileUpload ID="fileUpload" runat="server" />
                        </div>--%>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:Label ID="lblLname" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>Certification</label>
                            <asp:Label ID="lblCerti" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>How many year experince?</label>
                            <asp:Label ID="lblYr" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                    </div>


                </div>
                <div class="box-footer">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnSubmit" runat="server" Text="Back to List" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>
        </div>
    </form>
</asp:Content>
