<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_EditPost.aspx.cs" Inherits="jobPortal.Company_EditPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">Update Job Post</h2>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Post Header</label>
                            <asp:TextBox ID="txtHeader" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea cols="20" rows="2" id="txtDesc" class="form-control" runat="server"></textarea>

                        </div>
                        <div class="form-group">
                            <label>Location</label>
                            <asp:TextBox ID="txtLoc" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Field</label>
                            <asp:TextBox ID="txtField" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Job Type</label>
                            <asp:TextBox ID="txtType" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Salary</label>
                            <asp:TextBox ID="txtSal" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Update post" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnBack" runat="server" Text="Cancel" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnBack_Click" />
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
