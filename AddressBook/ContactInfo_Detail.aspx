<%@ Page language="c#" Codebehind="ContactInfo_Detail.aspx.cs" AutoEventWireup="false" Inherits="aspdotnet.ContactInfo_Detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ContactInfo_Detail</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY leftMargin="0" topMargin="0" MS_POSITIONING="GridLayout">
		<form id="ContactInfo_Detail" method="post" runat="server">
			<table cellSpacing="1" cellPadding="0" align="center" border="0">
				<tr>
					<td>
						<table cellSpacing="2" cellPadding="2" align="center" border="0">
							<tr>
								<td>Title</td>
								<td><asp:dropdownlist id="drplstTitle" runat="server">
										<asp:ListItem Value="--Selet--">--Selet--</asp:ListItem>
										<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
										<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
										<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
										<asp:ListItem Value="Dr.">Dr.</asp:ListItem>
									</asp:dropdownlist></td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>First Name</td>
								<td><asp:textbox id="txtFirstName" runat="server"></asp:textbox></td>
								<td></td>
								<td>Middle Name</td>
								<td><asp:textbox id="txtMiddleName" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>Last Name</td>
								<td><asp:textbox id="txtLastName" runat="server"></asp:textbox></td>
								<td></td>
								<td>Job Title
								</td>
								<td><asp:textbox id="txtJobTitle" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>Company</td>
								<td><asp:textbox id="txtCompany" runat="server"></asp:textbox></td>
								<td></td>
								<td>Website
								</td>
								<td><asp:textbox id="txtWebSite" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>Office Phone</td>
								<td><asp:textbox id="txtOfficePhone" runat="server"></asp:textbox></td>
								<td></td>
								<td>Home Phone
								</td>
								<td><asp:textbox id="txtHomePhone" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>Mobile</td>
								<td><asp:textbox id="txtMobile" runat="server"></asp:textbox></td>
								<td></td>
								<td>Fax
								</td>
								<td><asp:textbox id="txtFax" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>Official Email</td>
								<td><asp:textbox id="txtOfficialEmail" runat="server"></asp:textbox></td>
								<td></td>
								<td>Personal Email
								</td>
								<td><asp:textbox id="txtPersonalEmail" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td><i>Official Address</i></td>
								<td></td>
								<td></td>
								<td><i>Personal Address</i>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>Street</td>
								<td><asp:textbox id="txtOAStreet" runat="server"></asp:textbox></td>
								<td></td>
								<td>Street
								</td>
								<td><asp:textbox id="txtPAStreet" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>City</td>
								<td><asp:textbox id="txtOACity" runat="server"></asp:textbox></td>
								<td></td>
								<td>City
								</td>
								<td><asp:textbox id="txtPACity" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>State</td>
								<td><asp:textbox id="txtOAState" runat="server"></asp:textbox></td>
								<td></td>
								<td>State
								</td>
								<td><asp:textbox id="txtPAState" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>Country
								</td>
								<td><asp:textbox id="txtOACountry" runat="server"></asp:textbox></td>
								<td></td>
								<td>Country
								</td>
								<td><asp:textbox id="txtPACountry" runat="server"></asp:textbox></td>
							</tr>
							<tr>
								<td>ZipCode</td>
								<td><asp:textbox id="txtOAZipCode" runat="server"></asp:textbox></td>
								<td></td>
								<td>ZipCode
								</td>
								<td><asp:textbox id="txtPAZipCode" runat="server"></asp:textbox></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table align="center">
				<tr>
					<td>
						<INPUT type="button" class="buttonbg" value="Close" style="WIDTH:60px; height: 19px;"/></td>
				</tr>
			</table>
		</form>
	</BODY>
</HTML>
