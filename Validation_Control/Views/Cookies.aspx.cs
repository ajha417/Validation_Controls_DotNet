using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createIt_Click(object sender, EventArgs e)
        {
            Response.Cookies["name"].Value = TextBox1.Text;
            Response.Cookies["name"].Expires= DateTime.Now.AddMinutes(1);
            InfoMsg.Text = "Cookie created";
            TextBox1.Text = "";
        }

        protected void retrieveIt_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["name"] == null)
            {
                TextBox2.Text = "No cookies found";
            }
            else
            {
                TextBox2.Text = Request.Cookies["name"].Value;
            }
        }
    }
}