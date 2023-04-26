using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class sessionManagement : System.Web.UI.Page
    {
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            totalVisit.Text = count.ToString();
        }

        protected void visitIt_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                count = Convert.ToInt32(Session["username"].ToString());
            }
            count = count + 1;
            Session["username"] = count.ToString();
            totalVisit.Text = count.ToString();
        }
    }
}