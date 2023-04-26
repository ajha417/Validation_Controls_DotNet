using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation_Control.Views
{
    public partial class applicationstates : System.Web.UI.Page
    {
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            totalVisit.Text = "Total visit: "+ count.ToString();
        }

        protected void visitIt_Click(object sender, EventArgs e)
        {
            
            if (Application["visit"]!=null)
            {
                count = Convert.ToInt32(Application["visit"].ToString());
            }
            count = count + 1;
            Application["visit"] = count;
            totalVisit.Text = "Total visit: "+ count.ToString();
        }
    }
}