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
    public partial class LessonForm : System.Web.UI.Page
    {
        CourseBL CourseBl = new CourseBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            string CourseID = Session["SelectedCourseID"].ToString();
            List<DAL.Lesson> lessonlist = CourseBl.getLessonList(CourseID).ToList();
            Session["Lesson"] = lessonlist;

            if (lessonlist != null)
            {

                this.gvLesson.DataSource = lessonlist;
                this.gvLesson.DataBind();
            }
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There's no lesson in this course.')", true);

        }
        protected void gvLesson_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "ButtonField")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Lesson SelectedLesson = ((List<Lesson>)Session["Lesson"])[index];
                Session["SelectedLesson"] = SelectedLesson;
                string lessonID = SelectedLesson.lesson_id;
                Session["CurrentLessonID"] = lessonID;
                if (lessonID == "0101")
                {
                    Response.Redirect("Pretest0101.aspx");
                }
                if (lessonID == "0102")
                {
                    Response.Redirect("Pretest0102.aspx");
                }
                if (lessonID == "0103")
                {
                    Response.Redirect("Pretest0103.aspx");
                }

                if (lessonID == "0104")
                {
                    Response.Redirect("Pretest0104.aspx");
                }

                if (lessonID == "0105")
                {
                    Response.Redirect("Pretest0105.aspx");
                }

                if (lessonID == "0106")
                {
                    Response.Redirect("Pretest0106.aspx");
                }
                else
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There's no lesson in this course. Please select another one.')", true);


            }

        }
    }
}