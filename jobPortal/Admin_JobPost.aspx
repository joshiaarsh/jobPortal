<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_JobPost.aspx.cs" Inherits="JobPortal.Admin.JobPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            border: thin solid #9bddbc;
            width: 100%;
            border-bottom-left-radius: 6px;
            border-bottom-right-radius: 6px;
            height: 284px;
        }
    </style>
    <form name="_ctl0" method="post" id="_ctl0" runat="server">

        <table class="auto-style1">
            <tr>
                <td class="tblhead">JobPosts Report</td>
            </tr>
            <tr>
                <td>Search By Field and Location :&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="JobField" DataValueField="JobField" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [JobField] FROM [JobPost]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Loc" DataValueField="Loc" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [Loc] FROM [JobPost]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Refresh" />
                </td>
            </tr>
            <tr>
                <td>

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PostId" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="PostId" HeaderText="PostId" InsertVisible="False" ReadOnly="True" SortExpression="PostId" />
                            <asp:BoundField DataField="PostHead" HeaderText="PostHead" SortExpression="PostHead" />
                            <asp:BoundField DataField="Loc" HeaderText="Loc" SortExpression="Loc" />
                            <asp:BoundField DataField="Descr" HeaderText="Descr" SortExpression="Descr" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            <asp:BoundField DataField="JobField" HeaderText="JobField" SortExpression="JobField" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PostId" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderText="PostId" InsertVisible="False" ReadOnly="True" SortExpression="PostId" />
                            <asp:BoundField DataField="PostHead" HeaderText="PostHead" SortExpression="PostHead" />
                            <asp:BoundField DataField="Descr" HeaderText="Descr" SortExpression="Descr" />
                            <asp:BoundField DataField="Loc" HeaderText="Loc" SortExpression="Loc" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            <asp:BoundField DataField="JobField" HeaderText="JobField" SortExpression="JobField" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PostId" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderText="PostId" InsertVisible="False" ReadOnly="True" SortExpression="PostId" />
                            <asp:BoundField DataField="PostHead" HeaderText="PostHead" SortExpression="PostHead" />
                            <asp:BoundField DataField="Descr" HeaderText="Descr" SortExpression="Descr" />
                            <asp:BoundField DataField="Loc" HeaderText="Loc" SortExpression="Loc" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            <asp:BoundField DataField="JobField" HeaderText="JobField" SortExpression="JobField" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [PostId], [PostHead], [Descr], [Loc], [Salary], [JobField] FROM [JobPost] WHERE ([Loc] = @Loc)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="Loc" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [PostId], [PostHead], [Descr], [Loc], [Salary], [JobField] FROM [JobPost] WHERE ([JobField] = @JobField)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="JobField" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" DeleteCommand="DELETE FROM [JobPost] WHERE [PostId] = @PostId" InsertCommand="INSERT INTO [JobPost] ([PostHead], [Loc], [Descr], [Salary], [JobField]) VALUES (@PostHead, @Loc, @Descr, @Salary, @JobField)" SelectCommand="SELECT [PostId], [PostHead], [Loc], [Descr], [Salary], [JobField] FROM [JobPost]" UpdateCommand="UPDATE [JobPost] SET [PostHead] = @PostHead, [Loc] = @Loc, [Descr] = @Descr, [Salary] = @Salary, [JobField] = @JobField WHERE [PostId] = @PostId">
                        <DeleteParameters>
                            <asp:Parameter Name="PostId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="PostHead" Type="String" />
                            <asp:Parameter Name="Loc" Type="String" />
                            <asp:Parameter Name="Descr" Type="String" />
                            <asp:Parameter Name="Salary" Type="String" />
                            <asp:Parameter Name="JobField" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="PostHead" Type="String" />
                            <asp:Parameter Name="Loc" Type="String" />
                            <asp:Parameter Name="Descr" Type="String" />
                            <asp:Parameter Name="Salary" Type="String" />
                            <asp:Parameter Name="JobField" Type="String" />
                            <asp:Parameter Name="PostId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </td>
            </tr>
        </table>
    </form>
</asp:Content>
