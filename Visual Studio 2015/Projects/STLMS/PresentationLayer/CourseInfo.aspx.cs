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
    public partial class CourseInfo : System.Web.UI.Page
    {
        CourseBL CourseBl = new CourseBL();
        ST_LMSEntities ctx;

        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new ST_LMSEntities();
            Cours SelectedCourses = (Cours)Session["SelectedCourses"];

            int userid = Convert.ToInt32(SelectedCourses.user_id);



            lblCourseName.Text = SelectedCourses.course_name.ToString();
            lblDescription.Text = SelectedCourses.description.ToString();
            lblUpdateDate.Text = SelectedCourses.update_date.ToString();
            lblDuration.Text = SelectedCourses.duration.ToString();

            User author = CourseBl.getUser(userid);

            lblContactNo.Text = author.contact_no.ToString();
            lblEmail.Text = author.email.ToString();
            lblUserName.Text = author.user_name.ToString();
        }

        protected void btnStart_Click(object sender, EventArgs e)
        {
            ctx = new ST_LMSEntities();
            Cours SelectedCourses = (Cours)Session["SelectedCourses"];
            string CourseID = SelectedCourses.course_id.ToString();
            Session["SelectedCourseID"] = CourseID;

            Response.Redirect("LessonForm.aspx");
        }
    }
}