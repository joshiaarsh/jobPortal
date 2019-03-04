<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_viewApplicant.aspx.cs" Inherits="jobPortal.Company_viewApplicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <span><b><u>Post heading</u></b>: &nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Label ID="lblposthead" runat="server"></asp:Label>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">View Applicant Profile</h2>
                </div>

                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:Label ID="lblFname" runat="server" CssClass="form-control"></asp:Label>
                        </div>

                        <div class="form-group">
                            <label>Experince</label>
                            <asp:Label ID="lblExp" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group" style="float:right !important;">
                            <span>Reumse:
                            <asp:Label ID="lblReusme" runat="server"></asp:Label>
                            </span>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group" >
                            <label>Highest Education</label>
                            <asp:Label ID="lblEdu" runat="server" CssClass="form-control"></asp:Label>

                        </div>
                        <div class="form-group">
                            <label>Certification</label>
                            <asp:Label ID="lblCerti" runat="server" CssClass="form-control"></asp:Label>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="btnDownload" runat="server" Text="Download" CssClass="btn btn-flat" OnClick="btnDownload_Click" />
                        </div>
                    </div>

                </div>

                <div class="box-footer">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Back to List" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <asp:Label ID="lblpost" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>

        </div>


    </form>
</asp:Content>
