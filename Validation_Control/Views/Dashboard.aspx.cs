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
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
                showBooks();

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

        protected void addBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string booknameStr = bname.Text;
                string authorStr = author.Text;
                int bookPriceStr = Convert.ToInt32(bprice.Text);
                string publicationStr = publication.Text;
                string Query = "INSERT INTO Books_tbl VALUES('{0}','{1}','{2}','{3}')";
                Query = string.Format(Query, booknameStr, bookPriceStr,authorStr, publicationStr);
                connection.setData(Query);
                ErrMsg.Text = "Books added successfully!!!";
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;   
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            bname.Text = GridView1.SelectedRow.Cells[2].Text;
            bprice.Text = GridView1.SelectedRow.Cells[3].Text;
            author.Text = GridView1.SelectedRow.Cells[4].Text;
            publication.Text = GridView1.SelectedRow.Cells[5].Text;
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string booknameStr = bname.Text;
                string authorStr = author.Text;
                int bookPriceStr = Convert.ToInt32(bprice.Text);
                string publicationStr = publication.Text;
                string Query = "UPDATE Books_tbl SET bookname='{0}',bookprice='{1}',author='{2}',publication='{3}' WHERE bookid={4}";
                Query = string.Format(Query,booknameStr,bookPriceStr,authorStr, publicationStr, Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
                connection.setData(Query);
                ErrMsg.Text = "Updated successfully!!!";
            }
            catch(Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string booknameStr = bname.Text;
                string Query = "DELETE FROM Books_tbl WHERE bookid='{0}'";
                Query = string.Format(Query, Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
                connection.setData(Query);
                ErrMsg.Text = "Deleted !!!";
            }
            catch(Exception ex )
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}