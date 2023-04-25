using System;
using System.Collections.Generic;
using System.Data;
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
                showBooks();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void showBooks()
        {
            string Query = "SELECT * FROM Books_tbl";
            DataTable dt = connection.getData(Query);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}