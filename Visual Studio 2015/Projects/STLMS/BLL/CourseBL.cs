using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using DAL;

namespace BLL
{
    public class CourseBL
    {
        ST_LMSEntities ctx;

        public Cours courseList(string courseID)
        {
            ctx = new ST_LMSEntities();
            return (Cours)ctx.Courses.Where(x => x.course_id == courseID);
        }

        public User getUser(int userID)
        {
            ctx = new ST_LMSEntities();
            return (User)ctx.Users.Where(x => x.user_id == userID).FirstOrDefault();
        }

        public List<Cours> getCourseList(string role)
        {
            ctx = new ST_LMSEntities();
            return ctx.Courses.Where(x => x.role == role).ToList();

        }

        public Lesson getLesson(string lesson_id)
        {
            ctx = new ST_LMSEntities();
            return ctx.Lessons.Where(x => x.lesson_id == lesson_id).FirstOrDefault();
        }
        public List<Lesson> getLessonList(string course_id)
        {
            ctx = new ST_LMSEntities();
            return ctx.Lessons.Where(x => x.course_id == course_id).ToList();
        }
    }
}
