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
    public partial class Pretest0101 : System.Web.UI.Page
    {
        LessonBL lessonbl;
        protected void Page_Load(object sender, EventArgs e)
        {
          
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

                int Lesson010101 = Convert.ToInt32(RadioButtonList1.SelectedValue);
                int Lesson010102 = Convert.ToInt32(RadioButtonList2.SelectedValue);
                int Lesson010103 = Convert.ToInt32(RadioButtonList3.SelectedValue);
                int Lesson010104 = Convert.ToInt32(RadioButtonList4.SelectedValue);
                int Lesson010105 = Convert.ToInt32(RadioButtonList5.SelectedValue);

                lessonbl = new LessonBL();

                lessonbl.updateRate(userid, "010101", Lesson010101);
                lessonbl.updateRate(userid, "010102", Lesson010102);
                lessonbl.updateRate(userid, "010103", Lesson010103);
                lessonbl.updateRate(userid, "010104", Lesson010104);
                lessonbl.updateRate(userid, "010105", Lesson010105);

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Submit successfully!')", true);

                Response.Redirect("Lesson01/index.htm");

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