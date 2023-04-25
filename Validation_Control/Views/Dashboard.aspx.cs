using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Models.Functions connection;
        protected void Page_Load(object sender, EventArgs e)
        {
           connection= new Models.Functions();
            if (Session["username"] != null)
            {

                userInfo.Text = "Welcome," + Session["username"];
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

        }
    }
}