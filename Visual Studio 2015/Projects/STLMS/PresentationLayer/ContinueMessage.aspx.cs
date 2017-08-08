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
    public partial class ContinueMessage : System.Web.UI.Page
    {
        LessonBL lessonbl;

        protected void Page_Load(object sender, EventArgs e)
        {
            string lesson = Session["lesson"].ToString();
            Label1.Text = lesson;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            string lesson = Session["lesson"].ToString();

            if (lesson == "0101")
            {
                Response.Redirect("Pretest0102.aspx");
            }
            else
            if (lesson == "0102")
            {
                Response.Redirect("Pretest0103.aspx");
            }
            else
            if (lesson == "0103")
            {
                Response.Redirect("Pretest0104.aspx");
            }
            else
            if (lesson == "0104")
            {
                Response.Redirect("Pretest0105.aspx");
            }
            else
            if (lesson == "0105")
            {
                Response.Redirect("Lesson06/index.htm");
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("LessonForm.aspx");
        }
    }
}