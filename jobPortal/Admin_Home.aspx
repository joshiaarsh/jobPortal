<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="JobPortal.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<style type="text/css">

    .style10
    {
        width: 412px;
        height: 256px;
    }
    .style13
    {
        text-align: right;
        font-family: Calibri;
        font-size: 14px;
        font-weight: bold;
        color: #002D00;
        width: 57px;
    }
    .style14
    {
        height: 24px;
        width: 57px;
    }
    .style11
    {
        height: 24px;
    }
    .style15
    {
        width: 57px;
    }
    </style>

<form name="_ctl0" method="post" id="_ctl0" runat="server">
        
<table class="tbl">
        <tr>
            <td class="tblhead">
                Jobseeker Report</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Select JobSeeker :
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="180px">
                </asp:DropDownList>
                <asp:Button ID="Button5" runat="server" CssClass="btn" onclick="Button5_Click" 
                    Text="Select" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style10">
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    JobSeeker Name :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label1" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                    &nbsp;<asp:Label ID="Label12" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Address :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label3" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    City :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label4" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Pincode :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label5" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Mobile No :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label6" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Degree :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label7" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Skill :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label8" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Expereance :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label9" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    PassYear :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label10" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="lbl">
                                    Email :</td>
                                <td style="text-align: left">
                                    <asp:Label ID="Label11" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
