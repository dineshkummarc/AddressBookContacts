using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using aspdotnet.BusinessLogicLayer;  

namespace aspdotnet
{
	/// <summary>
	/// Summary description for ContactInfo.
	/// </summary>
	public class ContactInfo : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DataGrid dgrdAddressList;
		protected System.Web.UI.WebControls.Button btnAddNew;
		//char BLetter;
		private void Page_Load(object sender, System.EventArgs e)
		{
		Session["CurrentPage"]= "Contact List";	
			
			
			// Put user code to initialize the page here
			if (!Page.IsPostBack)
			{
				
				Session["BLetter"]="0".ToString();
				if (Request.QueryString["BLet"]!=null )
				{	
					Session["BLetter"]=Request.QueryString["BLet"].ToString(); 
				}				
				BindAddressBook(Session["BLetter"].ToString());				
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.btnAddNew.Click += new System.EventHandler(this.btnAddNew_Click);
			this.dgrdAddressList.ItemCreated += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dgrdAddressList_ItemCreated);
			this.dgrdAddressList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dgrdAddressList_DeleteCommand);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void BindAddressBook(string BLetter)
		{
			try
			{
				AddressBookCollection addressbook = BusinessLogicLayer.Address.GetEntries(BLetter);    
			
				this.dgrdAddressList.DataSource =  addressbook;
				dgrdAddressList.DataBind();
			}
			catch(Exception e)
			{
				Response.Write(e.Message);
			}		
		
		}

		private void btnAddNew_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("ContactInfo_Entry.aspx");
  
		}

		private void dgrdAddressList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			int ContactID = Convert.ToInt32(dgrdAddressList.DataKeys[(int)e.Item.ItemIndex]);
			BusinessLogicLayer.ContactEntry.Remove(ContactID);			
			BindAddressBook(Session["BLetter"].ToString());
		}

		private void dgrdAddressList_ItemCreated(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
		{
		
			switch(e.Item.ItemType)
			{
				case ListItemType.Item:
				case ListItemType.AlternatingItem:
				case ListItemType.EditItem:
					TableCell objCell = e.Item.Cells[7];
					ImageButton objImg = (ImageButton)objCell.Controls[1];
					objImg.Attributes.Add("onclick","return confirm('Are you sure you want to delete this item ?');");
					break;
			}
		}

		

	}
}
