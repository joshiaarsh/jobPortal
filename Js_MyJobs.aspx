<%@ Page Title="" Language="C#" MasterPageFile="~/Js_userMaster.Master" AutoEventWireup="true" CodeBehind="Js_MyJobs.aspx.cs" Inherits="jobPortal.Js_MyJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
      
        
        
        <asp:GridView  ID="GridView1" runat="server" AllowPaging="true">
                        
             
        </asp:GridView>
        <asp:SqlDataSource ID="Post" runat="server"></asp:SqlDataSource>
    </form>
</asp:Content>
