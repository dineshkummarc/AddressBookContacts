namespace aspdotnet
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for ContactInfo_Banner.
	/// </summary>
	public abstract class ContactInfo_Banner : System.Web.UI.UserControl
	{
	//	protected System.Web.UI.WebControls.Label lblPageHeader;
		
		public System.Web.UI.WebControls.Label lblPageHeader;

		
	//	public shared withevents System.Web.UI.WebControls.Label lblPageHeader;





		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here

			lblPageHeader.Text = Session["CurrentPage"].ToString() ;
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
		
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
