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
    public partial class Pretest0105 : System.Web.UI.Page
    {
        LessonBL lessonbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["CurrentLessonID"] = "0104";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == -1 || RadioButtonList1.SelectedIndex == -1 || RadioButtonList3.SelectedIndex == -1 || RadioButtonList4.SelectedIndex == -1 || RadioButtonList5.SelectedIndex == -1)
            {
                ScriptManager.RegisterClientScriptBlock(btnSubmit, this.GetType(), "alertMessage", "alert('Submit unsuccessfully!')", true);
            }
            else
            {
                int userid = Convert.ToInt32(Session["UserID"]);

                int Lesson01 = Convert.ToInt32(RadioButtonList1.SelectedValue);
                int Lesson02 = Convert.ToInt32(RadioButtonList2.SelectedValue);
                int Lesson03 = Convert.ToInt32(RadioButtonList3.SelectedValue);
                int Lesson04 = Convert.ToInt32(RadioButtonList4.SelectedValue);
                int Lesson05 = Convert.ToInt32(RadioButtonList5.SelectedValue);

                lessonbl = new LessonBL();

                lessonbl.updateRate(userid, "010501", Lesson01);
                lessonbl.updateRate(userid, "010502", Lesson02);
                lessonbl.updateRate(userid, "010503", Lesson03);
                lessonbl.updateRate(userid, "010504", Lesson04);
                lessonbl.updateRate(userid, "010505", Lesson05);

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Submit successfully!')", true);

                Response.Redirect("Lesson05/index.htm");

            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            RadioButtonList1.ClearSelection();
            RadioButtonList2.ClearSelection();
            RadioButtonList3.ClearSelection();
            RadioButtonList4.ClearSelection();
            RadioButtonList5.ClearSelection();
        }
    }
}