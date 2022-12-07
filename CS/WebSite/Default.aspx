<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="ComboUC.ascx" TagName="ComboUC" TagPrefix="uc1" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to create custom events and event handlers for a WebUserControl using JavaScript</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong>Category:</strong><br />
        <uc1:ComboUC ID="ComboUC1" runat="server" />
        <script type="text/ecmascript">
            document.addEventListener("valueChanged", OnValueChanged, false);
            function OnValueChanged(e) {
                cmbox2.PerformCallback(e.catID);
            }  
        </script>
        <strong>
            <br />
            Products:</strong><br />
        <dx:ASPxComboBox ID="cmbox2" runat="server" ClientInstanceName="cmbox2" DataSourceID="AccessDataSource1"
            TextField="ProductName" ValueField="ProductID" OnCallback="cmbox2_Callback">
        </dx:ASPxComboBox>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb"
            SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = ?)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="CategoryID" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
