using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class QueryStringPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendIt_Click(object sender, EventArgs e)
        {
            Response.Redirect("NextPage.aspx?name=" + TextBox1.Text);
        }
    }
}