using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class LoginPage : System.Web.UI.Page
    {
        Models.Functions connection;
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            connection= new Models.Functions(); 
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {

                string Query = "SELECT * FROM Users_tbl WHERE email='{0}' AND password='{1}'";
                Query = string.Format(Query,emailID.Text.ToString(),password.Text.ToString());
              //  InfoMsg.Text = Query;
                
                DataTable dt = connection.getData(Query);
                if(dt.Rows.Count == 0)
                {
                    InfoMsg.Text = "No user found!!!";
                }
                else
                {
                    InfoMsg.Text = "Login";
                    Session["username"] = emailID.Text.Substring(0,emailID.Text.IndexOf("@"));
                    Response.Redirect("Dashboard.aspx");
                }
            }
            catch(Exception ex)
            {
                InfoMsg.Text = ex.Message;  
            }
        }
    }
}