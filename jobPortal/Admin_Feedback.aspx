<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Feedback.aspx.cs" Inherits="JobPortal.Admin.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
      
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Feedback Report -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Fid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Fid" HeaderText="Fid" InsertVisible="False" ReadOnly="True" SortExpression="Fid" />
                        <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Descr" HeaderText="Descr" SortExpression="Descr" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Fid] = @Fid" InsertCommand="INSERT INTO [Feedback] ([Uid], [Title], [Descr], [Status]) VALUES (@Uid, @Title, @Descr, @Status)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [Uid] = @Uid, [Title] = @Title, [Descr] = @Descr, [Status] = @Status WHERE [Fid] = @Fid">
                    <DeleteParameters>
                        <asp:Parameter Name="Fid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Uid" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Descr" Type="String" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Uid" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Descr" Type="String" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Fid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
               
                <br />
               
            </td>
        </tr>
        <tr>
            <td>
                
                
            </td>
        </tr>
    </table>
        </form>
</asp:Content>
