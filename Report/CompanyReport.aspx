<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyReport.aspx.cs" Inherits="jobPortal.Report.CompanyReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="/crystalreportviewers13/js/crviewer/crv.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" ToolPanelView="None" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="..\Report\CrystalReportCompanyTry.rpt">
            </Report>
        </CR:CrystalReportSource>
        <div>
        </div>
    </form>
</body>
</html>
<a href="CompanyReport.aspx">CompanyReport.aspx</a>