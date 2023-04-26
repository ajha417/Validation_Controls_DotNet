using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class ViewStatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clearIt_Click(object sender, EventArgs e)
        {
            ViewState["username"] = TextBox1.Text;
            TextBox1.Text = "";
        }

        protected void diplayIt_Click(object sender, EventArgs e)
        {
            TextBox1.Text = ViewState["username"].ToString();
        }
    }
}