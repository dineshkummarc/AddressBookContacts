using System;
using System.Collections;
namespace aspdotnet.BusinessLogicLayer
{
	public class AddressBookCollection : ArrayList
	{
		public enum AddressFields
		{
		 ContactID, FullName ,OfficialEmail,PersonalEmail,OfficePhone,HomePhone		
		}
		public AddressBookCollection()
		{
		}
	}
}
