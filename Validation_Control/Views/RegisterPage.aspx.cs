using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        Models.Functions conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.Functions();
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string fnameStr = fname.Text.Trim().ToString();
                string lnameStr = lname.Text.Trim().ToString();
                string passwordStr = password.Text.Trim().ToString();
                int ageStr = Convert.ToInt32(ageit.Text);
                string mobileStr = mobileno.Text.Trim().ToString();
                string emailStr = email.Text.Trim().ToString();
                string Query = "INSERT INTO Users_tbl VALUES('{0}','{1}','{2}','{3}','{4}','{5}')";
                ErrMsg.Text = "Account created successfully!!!";
                Query = string.Format(Query, fnameStr, lnameStr, passwordStr, ageStr, mobileStr,emailStr);
                conn.setData(Query);
            }
            catch(Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }

        }
    }
}