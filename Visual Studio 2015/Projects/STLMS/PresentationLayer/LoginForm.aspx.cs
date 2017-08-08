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
    public partial class LoginForm : System.Web.UI.Page
    {

        LoginBL loginBl;
        static User user;

        protected void Page_Load(object sender, EventArgs e)
        {
            user = (User)Session["CurrentUser"];

            if (user != null)
                Response.Redirect("~/CoursesList.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            loginBl = new LoginBL();

            if (txtUserName.Text != "" && txtPassword.Text != "")
            {
                if (loginBl.checkLoginUser(txtUserName.Text, txtPassword.Text))
                {
                    user = loginBl.getLoginUser(txtUserName.Text, txtPassword.Text);
                    Session["CurrentUser"] = user;
                    Session["UserRole"] = user.role;
                    Session["UserName"] = user.user_name;
                    Session["ContactNo"] = user.contact_no.ToString();
                    Session["Email"] = user.email;
                    Session["UserID"] = user.user_id;


                    Response.Redirect("~/CoursesList.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username or password is not corrrect')", true);
                }

            }
        }
    }
}