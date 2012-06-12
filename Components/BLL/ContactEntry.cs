using System;
using System.Data;
using System.Configuration;
using aspdotnet.DataAccessLayer;

namespace  aspdotnet.BusinessLogicLayer
{
	public class ContactEntry
	{
		private int _ContactID;
		private string _Title;
		private	string _FirstName;
		private string _MiddleName;
		private string _LastName;
		private string _JobTitle;
		private string _Company;
		private string _Website; 
		private string _OfficePhone; 
		private string _HomePhone; 
		private string _Mobile; 
		private string _Fax; 
		private string _OEmail;
		private string _PEmail;
		private string _OAStreet;
		private string _OACity; 
		private string _OAState; 
		private string _OACountry;
		private string _OAZipCode;
		private string _PAStreet; 
		private string _PACity; 
		private string _PAState; 
		private string _PACountry;
		private string _PAZipCode;

		public int ContactID
		{
			get { return _ContactID; }
			set { _ContactID = value; }
		}
		public string Title
		{
			get { return _Title; }
			set { _Title = value; }
		}
		public string FirstName
		{
			get { return _FirstName; }
			set { _FirstName = value; }
		}
		public string MiddleName
		{
			get { return _MiddleName; }
			set { _MiddleName = value; }
		}
		public string LastName
		{
			get { return _LastName; }
			set { _LastName = value; }
		}

		public string JobTitle
		{
			get { return _JobTitle; }
			set { _JobTitle = value; }
		}

		public string Company
		{
			get { return _Company; }
			set { _Company = value; }
		}

		public string Website
		{
			get { return _Website; }
			set { _Website = value; }
		}

		public string OfficePhone
		{
			get { return _OfficePhone; }
			set { _OfficePhone = value; }
		}
		public string HomePhone
		{
			get { return _HomePhone; }
			set { _HomePhone = value; }
		}
		public string Mobile
		{
			get { return _Mobile; }
			set { _Mobile = value; }
		}
		public string Fax
		{
			get { return _Fax; }
			set { _Fax = value; }
		}
		public string OEmail
		{
			get { return _OEmail; }
			set { _OEmail = value; }
		}
		public string PEmail
		{
			get { return _PEmail; }
			set { _PEmail = value; }
		}
		
		public string OAStreet
		{
			get { return _OAStreet; }
			set { _OAStreet = value; }
		}

		public string OACity
		{
			get { return _OACity; }
			set { _OACity = value; }
		}
		public string OAState
		{
			get { return _OAState; }
			set { _OAState = value; }
		}
		public string OACountry
		{
			get { return _OACountry; }
			set { _OACountry = value; }
		}
		public string OAZipCode
		{
			get { return _OAZipCode; }
			set { _OAZipCode = value; }
		}
		public string PAStreet
		{
			get { return _PAStreet; }
			set { _PAStreet = value; }
		}
		public string PACity
		{
			get { return _PACity; }
			set { _PACity = value; }
		}
		public string PAState
		{
			get { return _PAState; }
			set { _PAState = value; }
		}

		public string PACountry
		{
			get { return _PACountry; }
			set { _PACountry = value; }
		}

		public string PAZipCode
		{
			get { return _PAZipCode; }
			set { _PAZipCode = value; }
		}
		public ContactEntry()
		{
		}
		public ContactEntry(int ContactID,string Title,string FirstName,string MiddleName,string LastName,string JobTitle,string Company,string Website,	string OfficePhone,string HomePhone,string Mobile,string Fax, string OEmail, string PEmail,string OAStreet,string OACity,string OAState,string OACountry,string OAZipCode,string PAStreet,string PACity ,string PAState,string PACountry,string PAZipCode)
		{
			 _ContactID=ContactID; 
			 _Title=Title;
			 _FirstName = FirstName;
			 _MiddleName = MiddleName;
			 _LastName = LastName;
		     _JobTitle = JobTitle;
			 _Company = Company;
			 _Website = Website;
			 _OfficePhone = OfficePhone;
			 _HomePhone = HomePhone;
			 _Mobile = Mobile;
			 _Fax = Fax;
			 _OEmail=OEmail;
			 _PEmail=PEmail;
			 _OAStreet = OAStreet;
			 _OACity = OACity;
			 _OAState = OAState;
			 _OACountry =OACountry;
			 _OAZipCode = OAZipCode;
			 _PAStreet = PAStreet;
			 _PACity = PACity;
			 _PAState = PAState;
			 _PACountry = PACountry;
			 _PAZipCode = PAZipCode;
		}

		public bool Save()
		{	if (_ContactID == 0)
				return Insert();
			else
				return  Update();
		}

		private bool Insert()
		{
		_ContactID = Convert.ToInt32(DBTask.ExecuteScalar(ConfigurationSettings.AppSettings[Web.Global.CfgKeyConnString],"ContactInfo_Insert",_Title,_FirstName,_MiddleName,_LastName,_JobTitle,_Company,_Website,_OfficePhone,_HomePhone,_Mobile,_Fax,_OEmail,_PEmail,_OAStreet,_OACity,_OAState,_OACountry,_OAZipCode,_PAStreet,_PACity ,_PAState,_PACountry,_PAZipCode));
		return (0 < _ContactID);
		}
		public static void Remove(int ContactID)
		{			
		DBTask.ExecuteNonQuery(ConfigurationSettings.AppSettings[Web.Global.CfgKeyConnString], "ContactInfo_Delete", ContactID);
		}
		private bool Update()
		{
			try
			{
			    DBTask.ExecuteNonQuery(ConfigurationSettings.AppSettings[Web.Global.CfgKeyConnString],"ContactInfo_Update",_ContactID,_Title,_FirstName,_MiddleName,_LastName,_JobTitle,_Company,_Website,_OfficePhone,_HomePhone,_Mobile,_Fax,_OEmail,_PEmail,_OAStreet,_OACity,_OAState,_OACountry,_OAZipCode,_PAStreet,_PACity ,_PAState,_PACountry,_PAZipCode);				
                return true;
			}
			catch 
			{
				return false;
			}
		}
		public void  LoadContact(int ContactID)
		{
			DataSet ds =   DBTask.ExecuteDataset(ConfigurationSettings.AppSettings[Web.Global.CfgKeyConnString], "ContactInfo_GetContact", ContactID);
			DataRow row = ds.Tables[0].Rows[0];			
			_ContactID=Convert.ToInt32(row["ContactID"].ToString()); 
			_Title=row["Title"].ToString();  
			_FirstName = row["FirstName"].ToString();  
			_MiddleName = row["MiddleName"].ToString();  
			_LastName = row["LastName"].ToString();  
			_JobTitle = row["JobTitle"].ToString();  
			_Company = row["Company"].ToString();
			_Website = row["Website"].ToString();
			_OfficePhone = row["OfficePhone"].ToString();
			_HomePhone =  row["HomePhone"].ToString();
			_Mobile =  row["Mobile"].ToString();
			_Fax = row["Fax"].ToString();
			_OEmail=row["OfficialEmail"].ToString();
			_PEmail=row["PersonalEmail"].ToString();
			_OAStreet = row["OAStreet"].ToString();
			_OACity = row["OACity"].ToString();
			_OAState = row["OAState"].ToString();
			_OACountry =row["OACountry"].ToString();
			_OAZipCode = row["OAZip"].ToString();
			_PAStreet = row["PAStreet"].ToString();
			_PACity = row["PACity"].ToString();
			_PAState = row["PAState"].ToString();
			_PACountry = row["PACountry"].ToString();
			_PAZipCode = row["PAZip"].ToString();			
			
		}

	}
}
