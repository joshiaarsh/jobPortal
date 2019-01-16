<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_Post.aspx.cs" Inherits="jobPortal.Js_Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="col-sm-2"></div>
        <div class="col-lg-8">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Post List</h3>
                </div>
                <div class="box-body">
                    <asp:GridView ID="gdPost" runat="server" AllowPaging="true"
                        CssClass="table table-bordered"
                        DataKeyNames="PostId"
                        AutoGenerateColumns="False"
                        OnRowCommand="gdPost_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide"></asp:BoundField>
                            <asp:BoundField DataField="Header" HeaderText="Header"></asp:BoundField>
                            <asp:BoundField DataField="Descr" HeaderText="Description"></asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnApply" runat="server" CommandName="Apply" HeaderText="Apply for job" SelectText="Apply">Apply</asp:LinkButton>
                                    <asp:LinkButton ID="btnView" runat="server" CommandName="View" HeaderText="View details" SelectText="View">View</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
        </div>
    </form>

</asp:Content>
