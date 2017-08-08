using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace PresentationLayer
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        LoginBL loginBl;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginBl = new LoginBL();

            lblRole.Text = (string)Session["UserRole"];
            lblUserName.Text = (string)Session["UserName"];
            lblContactNo.Text = (string)Session["ContactNo"];
            lblEmail.Text = (string)Session["Email"];
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/LoginForm.aspx");
        }
    }
}
