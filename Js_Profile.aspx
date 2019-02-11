<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_Profile.aspx.cs" Inherits="jobPortal.Js_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h2 class="box-title">Set Profile</h2>
                </div>
                <div class="box-body">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" ControlToValidate="txtFname"> </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Highest Education</label>
                            <asp:TextBox ID="txtEdu" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your Highest Education " ControlToValidate="txtEdu"> </asp:RequiredFieldValidator>




                        </div>
                        <div class="form-group">
                            <label>Any Experince?</label>
                            <asp:TextBox ID="txtExp" runat="server" CssClass="form-control"></asp:TextBox>


                        </div>
<%--                         <div class="form-group">
                            <label>Upload your Resume:</label>
                        <asp:FileUpload ID="fileUpload" runat="server"/>
                        </div>--%>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="txtLname"> </asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <label>Certification</label>
                            <asp:TextBox ID="txtCerti" runat="server" CssClass="form-control"></asp:TextBox>


                        </div>
                        <div class="form-group">
                            <label>How many year experince?</label>
                            <asp:TextBox ID="txtYr" runat="server" CssClass="form-control"></asp:TextBox>
                            '

                        </div>
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
        <div class="col-md-2"></div>
    </form>
</asp:Content>
