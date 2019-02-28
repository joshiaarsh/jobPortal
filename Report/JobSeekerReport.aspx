<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobSeekerReport.aspx.cs" Inherits="jobPortal.Report.JobSeekerReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="/crystalreportviewers13/js/crviewer/crv.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
        </div>
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="..\Report\CrystalReportJobSeeker.rpt">
            </Report>
        </CR:CrystalReportSource>
    </form>
</body>
</html>
