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
	/// Summary description for ContactInfo_Entry.
	/// </summary>
	public class ContactInfo_Entry : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button btnSave;
		protected System.Web.UI.WebControls.TextBox txtFirstName;
		protected System.Web.UI.WebControls.TextBox txtMiddleName;
		protected System.Web.UI.WebControls.TextBox txtLastName;
		protected System.Web.UI.WebControls.TextBox txtJobTitle;
		protected System.Web.UI.WebControls.TextBox txtCompany;
		protected System.Web.UI.WebControls.TextBox txtWebSite;
		protected System.Web.UI.WebControls.TextBox txtOfficePhone;
		protected System.Web.UI.WebControls.TextBox txtHomePhone;
		protected System.Web.UI.WebControls.TextBox txtMobile;
		protected System.Web.UI.WebControls.TextBox txtFax;
		protected System.Web.UI.WebControls.TextBox txtOfficialEmail;
		protected System.Web.UI.WebControls.TextBox txtPersonalEmail;
		protected System.Web.UI.WebControls.TextBox txtOAStreet;
		protected System.Web.UI.WebControls.TextBox txtPAStreet;
		protected System.Web.UI.WebControls.TextBox txtOACity;
		protected System.Web.UI.WebControls.TextBox txtPACity;
		protected System.Web.UI.WebControls.TextBox txtOAState;
		protected System.Web.UI.WebControls.TextBox txtPAState;
		protected System.Web.UI.WebControls.TextBox txtOACountry;
		protected System.Web.UI.WebControls.TextBox txtPACountry;
		protected System.Web.UI.WebControls.TextBox txtOAZipCode;
		protected System.Web.UI.WebControls.TextBox txtPAZipCode;
		protected System.Web.UI.WebControls.DropDownList drplstTitle;
		protected System.Web.UI.WebControls.Button btnCancel;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			

			if (!Page.IsPostBack)
			{

				Session["ContactID"]="0".ToString();
				Session["CurrentPage"]= "Add Contact";
				btnSave.Text="Save";

				if (Request.QueryString["ContactID"]!=null )
				{	
					Session["ContactID"]=Request.QueryString["ContactID"].ToString();
				}				
			
				if (Session["ContactID"].ToString() !="0" ) 
				{
					GetContactInfo(Convert.ToInt32(Session["ContactID"].ToString())); 
					btnSave.Text="Update";  
					Session["CurrentPage"]= "Edit Contact";
				}

			}

	// Put user code to initialize the page here
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
			this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
			this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void btnCancel_Click(object sender, System.EventArgs e)
		{
				Response.Redirect("ContactInfo.aspx?BLet=" + Session["BLetter"].ToString());  
		}

		private void btnSave_Click(object sender, System.EventArgs e)
		{
			string Title =  drplstTitle.SelectedItem.Text;    
			string FirstName = txtFirstName.Text;
			string MiddleName = txtMiddleName.Text;
			string LastName = txtLastName.Text;
			string JobTitle = this.txtJobTitle.Text;
			string Company = this.txtCompany.Text;
			string Website = this.txtWebSite.Text;
			string OfficePhone = this.txtOfficePhone.Text;
			string HomePhone = this.txtHomePhone.Text;
			string Mobile = this.txtMobile.Text;
			string Fax = this.txtFax.Text;
			string OEmail = this.txtOfficialEmail.Text;
			string PEmail = this.txtPersonalEmail.Text;
			string OAStreet = this.txtOAStreet.Text;
			string OACity = this.txtOACity.Text ;
			string OAState = this.txtOAState.Text;
			string OACountry = this.txtOACountry.Text;
			string OAZipCode = this.txtOAZipCode.Text;
			string PAStreet = this.txtPAStreet.Text;
			string PACity = this.txtPACity.Text;
			string PAState = this.txtPAState.Text;
			string PACountry = this.txtPACountry.Text;
			string PAZipCode = this.txtPAZipCode.Text;
            aspdotnet.BusinessLogicLayer.ContactEntry  AddEntry = new ContactEntry(Convert.ToInt32(Session["ContactID"].ToString()),Title,FirstName,MiddleName,LastName,JobTitle,Company,Website,OfficePhone,HomePhone,Mobile,Fax,OEmail,PEmail,OAStreet,OACity,OAState,OACountry,OAZipCode,PAStreet,PACity,PAState,PACountry,PAZipCode);
			AddEntry.Save();
			Response.Redirect("ContactInfo.aspx?BLet=" + Session["BLetter"].ToString()); 

		}




		private void GetContactInfo(int ContactID)
		{
		 	ContactEntry ce = new ContactEntry();
			ce.LoadContact(ContactID);			   
			switch(ce.Title)
			{
				case "Mr.":
					drplstTitle.SelectedIndex = 1;  					
					break;
				case "Miss.":
					drplstTitle.SelectedIndex = 2;  
					break;
				case "Mrs.":
					drplstTitle.SelectedIndex = 3;  
					break;
				case "Dr.":
					drplstTitle.SelectedIndex = 4;  
					break;
				default:
					drplstTitle.SelectedIndex = 0;  
					break;
			}
	
        	txtFirstName.Text = ce.FirstName;			
			txtMiddleName.Text = ce.MiddleName;
			txtLastName.Text = ce.LastName;
			txtJobTitle.Text = ce.JobTitle;
			txtCompany.Text = ce.Company;
			txtWebSite.Text = ce.Website ;
			txtOfficePhone.Text= ce.OfficePhone;
			txtHomePhone.Text = ce.HomePhone;
			txtMobile.Text=ce.Mobile;
			txtFax.Text = ce.Fax;
			txtOfficialEmail.Text = ce.OEmail;
			txtPersonalEmail.Text= ce.PEmail;
			txtOAStreet.Text = ce.OAStreet;
			txtOACity.Text= ce.OACity;
			txtOAState.Text= ce.OAState;
			txtOACountry.Text = ce.OACountry ;
			txtOAZipCode.Text = ce.OAZipCode;
			txtPAStreet.Text = ce.PAStreet;
			txtPACity.Text= ce.PACity ;
			txtPAState.Text= ce.PAState;
			txtPACountry.Text = ce.PACountry ;
			txtPAZipCode.Text = ce.PAZipCode ;         
		}
	}
}
