<%@ Register TagPrefix="Contact" TagName="Banner" Src="ContactInfo_Banner.ascx" %>
<%@ Page language="c#" Codebehind="ContactInfo.aspx.cs" AutoEventWireup="false" Inherits="aspdotnet.ContactInfo" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AddressBook</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="styles.css" type="text/css" rel="stylesheet">
	</HEAD>
		<Script language="javascript">
		function popup(url)
		{
			mywin=window.open("","goidiaplaywin","status=no,width=600,height=460,left=250,top=175");
			mywin.location.href=url;
			mywin.focus();
		}
		</script>
	<body leftMargin="0" topMargin="0" MS_POSITIONING="GridLayout">
		<form id="ContactInfo" method="post" runat="server">
			<CONTACT:BANNER id="UCbanner" runat="server"></CONTACT:BANNER>
			<table class="searchLabel" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td colSpan="2">
						<table class="searchLabel" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td>&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="middle"><asp:button id="btnAddNew" runat="server" CssClass="buttonbg" Text="Add Contact"></asp:button></td>
					<td width="59%">
						<table class="searchLabel" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td><A href="ContactInfo.aspx?BLet=0">All</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=A">A</A>|</td>
								<td><A href="ContactInfo.aspx?BLet=B">B</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=C">C</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=D">D</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=E">E</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=F">F</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=G">G</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=H">H</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=I">I</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=J">J</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=K">K</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=L">L</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=M">M</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=N">N</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=O">O</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=P">P</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=Q">Q</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=R">R</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=S">S</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=T">T</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=U">U</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=V">V</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=W">W</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=X">X</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=Y">Y</A> |</td>
								<td><A href="ContactInfo.aspx?BLet=Z">Z</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
				<tr>
					<td colSpan="4" height="10"></td>
				</tr>
				<tr>
					<td colSpan="4">
						<table cellSpacing="0" cellPadding="0" width="100%">
							<tr>
								<td width="2%"></td>
								<td class="titleBg" width="82%">&nbsp;Search Results</td>
								<td width="2%"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="4" height="1"></td>
				</tr>
				<tr>
					<td colSpan="4">
						<table cellSpacing="1" cellPadding="0" width="94%" align="center" bgColor="#f6691f" border="0">
							<tr>
								<td bgColor="#ffffff">
									<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<TBODY>
											<tr>
												<td vAlign="top"><asp:datagrid id="dgrdAddressList" runat="server" Width="945px" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="ContactID" CellPadding="2" BorderStyle="None" BorderColor="White">
														<AlternatingItemStyle BackColor="#FEE3C6"></AlternatingItemStyle>
														<ItemStyle BackColor="#FFFFFF"></ItemStyle>
														<HeaderStyle CssClass="content"></HeaderStyle>
														<Columns>
															<asp:TemplateColumn HeaderText="S.No">
																<HeaderStyle HorizontalAlign="Left" Width="5%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																	&nbsp;<%# Container.ItemIndex+1 %>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Name">
																<HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																<!--<a href="ContactInfo_Detail.aspx?ContactID=<%# DataBinder.Eval(Container.DataItem, "ContactID") %>">-->
																<a href="javascript:popup('ContactInfo_Detail.aspx?ContactID=<%# DataBinder.Eval(Container.DataItem, "ContactID") %>')">
																
																
																	&nbsp;<%# DataBinder.Eval(Container.DataItem, "FullName") %> </a> 
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Email(Office)">
																<HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																	&nbsp;<%# DataBinder.Eval(Container.DataItem, "OfficialEmail") %>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Email(Personal)">
																<HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																	&nbsp;<%# DataBinder.Eval(Container.DataItem, "PersonalEmail") %>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Phone(Office)">
																<HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																	&nbsp;<%# DataBinder.Eval(Container.DataItem, "OfficePhone") %>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Phone(Personal)">
																<HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																	&nbsp;<%# DataBinder.Eval(Container.DataItem, "HomePhone") %>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Edit">
																<HeaderStyle HorizontalAlign="Left" Width="5%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
																<ItemTemplate>
																			<a href="ContactInfo_Entry.aspx?ContactId=<%# DataBinder.Eval(Container.DataItem, "ContactID") %>">																													
																		<asp:Image ImageUrl="images/icon-pencil.gif" Runat="server" ID="Image1"></asp:Image></a>
															
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn HeaderText="Delete">
																<HeaderStyle HorizontalAlign="Center" Width="5%" CssClass="contentBold" VerticalAlign="Middle" BackColor="#FF8E4D"></HeaderStyle>
																<ItemStyle HorizontalAlign="Center" CssClass="content"></ItemStyle>
																<ItemTemplate>
																	<asp:imagebutton Runat="server" ImageUrl="images/icon-delete.gif" CommandName="Delete" CausesValidation="False" ID="imgDeleteButton"></asp:imagebutton>
																</ItemTemplate>
															</asp:TemplateColumn>
														</Columns>
														<PagerStyle HorizontalAlign="Center"></PagerStyle>
													</asp:datagrid></td>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
