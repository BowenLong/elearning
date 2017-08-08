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
    public partial class CoursesList : System.Web.UI.Page
    {
        CourseBL CourseBl = new CourseBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Cours> Courses = new List<Cours>();
            string role = (string)Session["UserRole"];
            Courses = CourseBl.getCourseList(role);
            if (Courses != null)
            {
                Session["Courses"] = Courses;
                this.gvCourseList.DataSource = Courses;
                this.gvCourseList.DataBind();
            }
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You don't have any courses.')", true);
        }

        protected void gvCourseList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ButtonField")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Cours SelectCourses = ((List<Cours>)Session["Courses"])[index];
                Session["SelectedCourses"] = SelectCourses;
                Response.Redirect("CourseInfo.aspx");
            }

        }

    }
}