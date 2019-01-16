<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Company.aspx.cs" Inherits="JobPortal.Admin.Company" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        
     <table class="box-header with-border">
        <tr>
            <td class="tblhead">
                Company Report</td>
        </tr>
        <tr>
            <td>
                Search By Name :
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [Name] FROM [Company]" DeleteCommand="DELETE FROM [Company] WHERE [Cid] = @Cid"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Refresh" />
&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT * FROM [Company]" DeleteCommand="DELETE FROM [Company] WHERE [CID] = @CID" InsertCommand="INSERT INTO [Company] ([Name], [descr], [website], [email], [loc], [contactNo], [pwd]) VALUES (@Name, @descr, @website, @email, @loc, @contactNo, @pwd)" UpdateCommand="UPDATE [Company] SET [Name] = @Name, [descr] = @descr, [website] = @website, [email] = @email, [loc] = @loc, [contactNo] = @contactNo, [pwd] = @pwd WHERE [CID] = @CID">
                    <DeleteParameters>
                        <asp:Parameter Name="CID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="descr" Type="String" />
                        <asp:Parameter Name="website" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="loc" Type="String" />
                        <asp:Parameter Name="contactNo" Type="Decimal" />
                        <asp:Parameter Name="pwd" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="descr" Type="String" />
                        <asp:Parameter Name="website" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="loc" Type="String" />
                        <asp:Parameter Name="contactNo" Type="Decimal" />
                        <asp:Parameter Name="pwd" Type="String" />
                        <asp:Parameter Name="CID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="733px" AutoGenerateColumns="False" DataKeyNames="CID">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="descr" HeaderText="descr" SortExpression="descr" />
                        <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="loc" HeaderText="loc" SortExpression="loc" />
                        <asp:BoundField DataField="contactNo" HeaderText="contactNo" SortExpression="contactNo" />
                        <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
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
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="733px" DataKeyNames="CID">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="descr" HeaderText="descr" SortExpression="descr" />
                        <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="loc" HeaderText="loc" SortExpression="loc" />
                        <asp:BoundField DataField="contactNo" HeaderText="contactNo" SortExpression="contactNo" />
                        <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT * FROM [Company] WHERE ([Name] = @Name)" DeleteCommand="DELETE FROM [Company] WHERE [CID] = @CID" InsertCommand="INSERT INTO [Company] ([Name], [descr], [website], [email], [loc], [contactNo], [pwd]) VALUES (@Name, @descr, @website, @email, @loc, @contactNo, @pwd)" UpdateCommand="UPDATE [Company] SET [Name] = @Name, [descr] = @descr, [website] = @website, [email] = @email, [loc] = @loc, [contactNo] = @contactNo, [pwd] = @pwd WHERE [CID] = @CID">
                    <DeleteParameters>
                        <asp:Parameter Name="CID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="descr" Type="String" />
                        <asp:Parameter Name="website" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="loc" Type="String" />
                        <asp:Parameter Name="contactNo" Type="Decimal" />
                        <asp:Parameter Name="pwd" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Name" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="descr" Type="String" />
                        <asp:Parameter Name="website" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="loc" Type="String" />
                        <asp:Parameter Name="contactNo" Type="Decimal" />
                        <asp:Parameter Name="pwd" Type="String" />
                        <asp:Parameter Name="CID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                <br />
                
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
