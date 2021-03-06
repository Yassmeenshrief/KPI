<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProjectAdvancedSearch.ascx.cs" Inherits="UserControls_AdvancedSearch_ProjectAdvancedSearch" %>
<%@ Register Src="~/UserControls/SearchUserControl/SC_DataSearchItem.ascx" TagPrefix="app" TagName="SC_DataSearchItem" %>



<%@ Register Src="../SearchUserControl/SC_TextSearchItem.ascx" TagName="SC_TextSearchItem" TagPrefix="uc1" %>



<div style="width: 400px">
    <div>
        <app:SC_DataSearchItem runat="server" ID="SC_DataSearchItem" />
    </div>
    <div style="clear:both">

        <uc1:SC_TextSearchItem ID="SC_TextSearchItem1"
            runat="server"
            Title="<% $Resources: Project, labelProjectName %>"
            SearchColumnKey="name"
            ShowAndOrButtons="true" />

    </div>
</div>
