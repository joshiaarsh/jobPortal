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
                    <asp:GridView ID="gdApplicant" runat="server" AllowPaging="true"  
                        CssClass="table table-bordered"  
                        DataKeyNames="PostId" 
                        AutoGenerateColumns="False"
                        OnRowCommand="gdApplicant_RowCommand"
                        OnSelectedIndexChanging="gdApplicant_SelectedIndexChanging">
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide">
                            </asp:BoundField>
                            <asp:BoundField DataField="PostHead" HeaderText="Header">
                            </asp:BoundField>
                           <asp:BoundField DataField="JsId" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide">
                            </asp:BoundField>
                            <asp:BoundField DataField="JsName" HeaderText="ApplicantName">
                            </asp:BoundField>
                          
                            <asp:CommandField HeaderText="View" SelectText="View" ShowSelectButton="True">
                            </asp:CommandField>
                             <asp:TemplateField HeaderText="Selection Process">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnApprove" runat="server" CommandName="Approve" HeaderText="Approve" SelectText="Approve">Approve</asp:LinkButton>
                                    <asp:LinkButton ID="btnReject" runat="server" CommandName="Reject" HeaderText="Reject" SelectText="Reject">Reject</asp:LinkButton>
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
