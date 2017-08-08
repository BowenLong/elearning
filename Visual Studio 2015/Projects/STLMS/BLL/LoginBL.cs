using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class LoginBL
    {
        ST_LMSEntities ctx;


        public bool checkLoginUser(string userName, string password)
        {
            ctx = new ST_LMSEntities();
            User login = ctx.Users.Where(x => x.user_name == userName && x.password == password).FirstOrDefault();

            if (login == null)
                return false;
            else
                return true;
        }

        public User getLoginUser(string userName, string password)
        {
            ctx = new ST_LMSEntities();
            User getUser = ctx.Users.Where(x => x.user_name == userName && x.password == password).FirstOrDefault();
            if (getUser != null)
            {
                return getUser;
            }
            else
                return null;
        }

    }
}
