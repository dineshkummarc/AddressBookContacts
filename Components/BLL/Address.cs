using System;
using System.Data;
using System.Configuration;
using aspdotnet.DataAccessLayer;

namespace aspdotnet.BusinessLogicLayer
{
	public class Address
	{		
			private int			_ContactID;
			private string		_FullName;
			private string		_OfficialEmail;
			private string		_PersonalEmail;
			private string		_OfficePhone;
			private string		_HomePhone;
	
		public Address()
		{				
		}
			public int ContactID
			{
				get { return _ContactID; }
				set { _ContactID = value; }
			}

			public string FullName
			{
				get { return _FullName; }
				set { _FullName = value; }
			}
		
			public string OfficialEmail
			{
				get { return _OfficialEmail; }
				set { _OfficialEmail = value; }
			}

			public string PersonalEmail
			{
				get { return _PersonalEmail; }
				set { _PersonalEmail = value; }
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

		public static AddressBookCollection GetEntries( string BLetter)
		{			 			
			DataSet dsData = DBTask.ExecuteDataset(ConfigurationSettings.AppSettings[Web.Global.CfgKeyConnString]
				,"ContactInfo_GetContactList",BLetter);			
			AddressBookCollection entryList = new AddressBookCollection();
			foreach(DataRow row in dsData.Tables[0].Rows)
			{	Address AB = new Address();
				AB.ContactID = Convert.ToInt32(row["ContactID"]);
				AB.FullName = row["FullName"].ToString();
				AB.OfficialEmail  = row["OfficialEmail"].ToString();
				AB.PersonalEmail = row["PersonalEmail"].ToString();
				AB.OfficePhone   = row["OfficePhone"].ToString();
				AB.HomePhone  = row["HomePhone"].ToString();
				entryList.Add(AB); 
			}
			return entryList;		
		}
	}
}
