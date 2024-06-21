using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DMS
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserLoginCheck();
        }
        private void UserLoginCheck()
        {
            if (Session["UserID"] == null || Session["UserID"].ToString().Trim() == string.Empty)
            {
                Response.Redirect("Login.html");
            }
            else
            {
                hid_LoginID.Value = Session["UserID"].ToString().Trim();
                hid_UserFullName.Value = Session["UserName"].ToString().Trim();
                hid_LoPrivilege.Value = Session["LoPrivilege"].ToString().Trim();
                hid_Users.Value = Session["Users"].ToString().Trim();
            }
        }
    }
}