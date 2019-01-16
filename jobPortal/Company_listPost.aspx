<%@ Page Title="" Language="C#" MasterPageFile="~/CUserMaster.Master" AutoEventWireup="true" CodeBehind="Company_listPost.aspx.cs" Inherits="jobPortal.Company_listPost" %>

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
                        OnRowDeleting="gdPost_RowDeleting" 
                        OnRowEditing="gdPost_RowEditing" 
                        OnSelectedIndexChanging="gdPost_SelectedIndexChange">
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide">
                            </asp:BoundField>
                            <asp:BoundField DataField="Header" HeaderText="Header">
                            </asp:BoundField>
                            <asp:BoundField DataField="Status" HeaderText="Status">
                            </asp:BoundField>
                            <asp:CommandField EditText="Update" HeaderText="Update" ShowEditButton="True">
                            </asp:CommandField>
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True">
                            </asp:CommandField>
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
