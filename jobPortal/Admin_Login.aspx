<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="JobPortal.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="_ctl0" method="post" id="_ctl0" runat="server">
        
   <div id="body">
      <div id="login">
          <table class="tbl">
              <tr>
                  <td class="tblhead" colspan="2">
                      ADMIN LOGIN</td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="lbl">
                      UserName :
                  </td>
                  <td>
                      <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="lbl">
                      Password :
                  </td>
                  <td>
                      <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Button ID="btnlogin" runat="server" CssClass="btn" 
                          onclick="btnlogin_Click" Text="Login" />
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Label ID="lbl" runat="server"></asp:Label>
                  </td>
              </tr>
          </table>
       </div>
   </div>
    
        </form>
</asp:Content>
