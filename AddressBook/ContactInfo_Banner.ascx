<%@ Control Language="c#" AutoEventWireup="false" Codebehind="ContactInfo_Banner.ascx.cs" Inherits="aspdotnet.ContactInfo_Banner" TargetSchema="http://schemas.microsoft.com/intellisense/ie5"%>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<!--<meta http-equiv=refresh content=1> -->
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
		<td width="81%"><IMG height="61" src="images/ab_img_1.jpg" width="184"><IMG height="61" src="images/ab_img_3.jpg" width="500"></td>
	</tr>
</table>
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
		<td class="subHeading" width="7%" height="16">&nbsp;</td>
		<td class="subHeading" width="49%" height="16">
			<asp:Label id="lblPageHeader" runat="server">Contacts List</asp:Label></td>
		<td class="subHeading" width="19%" height="16">&nbsp;</td>
		<td class="subHeading" width="25%" height="16">Date:
			<%=DateTime.Now.ToString()%>
		</td>
	</tr>
</table>
