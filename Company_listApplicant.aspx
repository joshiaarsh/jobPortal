<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_listApplicant.aspx.cs" Inherits="jobPortal.Company_listApplicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
        <div class="col-sm-2"></div>
        <div class="col-lg-8">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Applicant List</h3>
                </div>
                <div class="box-body">
                    <asp:GridView ID="gdPost" runat="server" AllowPaging="true"  
                        CssClass="table table-bordered"  
                        DataKeyNames="PostId" 
                        AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide">
                            </asp:BoundField>
                            <asp:BoundField DataField="PostHead" HeaderText="Header">
                            </asp:BoundField>
                           <asp:BoundField DataField="JsId" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide">
                            </asp:BoundField>
                            <asp:BoundField DataField="JsName" HeaderText="ApplicantName">
                            </asp:BoundField>
                            <%--<asp:CommandField EditText="Update" HeaderText="Update" ShowEditButton="True">
                            </asp:CommandField>
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True">
                            </asp:CommandField>--%>
                            <asp:CommandField HeaderText="View" SelectText="View" ShowSelectButton="True">
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
        </div>
    </form>
</asp:Content>
