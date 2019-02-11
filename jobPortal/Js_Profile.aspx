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

                        </div>
                        <div class="form-group">
                            <label>Highest Education</label>
                            <asp:TextBox ID="txtEdu" runat="server" CssClass="form-control"></asp:TextBox>


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


                        </div>
                        <div class="form-group">
                            <label>Certification</label>
                            <asp:TextBox ID="txtCerti" runat="server" CssClass="form-control"></asp:TextBox>


                        </div>
                        <div class="form-group">
                            <label>How many year experince?</label>
                            <asp:TextBox ID="txtYr" runat="server" CssClass="form-control"></asp:TextBox>

                            <br />

                        </div>
                    </div>

                   
                </div>
                <div class="box-footer">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="File">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Size of file" />
                                <asp:BoundField HeaderText="File Type" />
                            </Columns>
                        </asp:GridView>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </form>
</asp:Content>
