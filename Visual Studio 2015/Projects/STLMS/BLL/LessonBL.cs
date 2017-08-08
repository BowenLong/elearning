using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class LessonBL
    {
        ST_LMSEntities ctx;

        public Result getUserLesson(int userid, string lessonid)
        {
            ctx = new ST_LMSEntities();
            Result getResult = ctx.Results.Where(x => x.user_id == userid && x.lesson_id == lessonid).FirstOrDefault();
            return getResult;
        }

        public bool updateincrease(int userid, string questionid)
        {
            LessonBL lessonbl = new LessonBL();
            ctx = new ST_LMSEntities();
            Result getRate = ctx.Results.Where(x => x.user_id == userid && x.question_id == questionid).FirstOrDefault();
            if (getRate.complete == true)
            {
                int increase = Convert.ToInt32(getRate.post) - Convert.ToInt32(getRate.pre);
                getRate.increase = increase ;
                ctx.SaveChanges();
                return true;

            }
            else { return true; }
           }


        public bool updateRate(int userid, string questionid, int rate)
        {
            LessonBL lessonbl = new LessonBL();
            ctx = new ST_LMSEntities();
            Result getRate = ctx.Results.Where(x => x.user_id == userid && x.question_id == questionid).FirstOrDefault();

            if (getRate.pre == null)
            {
                getRate.pre = rate;
                ctx.SaveChanges();
                return true;

            }
            else
            if (getRate.post == null)
            {
                getRate.post = rate;
                getRate.complete = true;
                ctx.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
