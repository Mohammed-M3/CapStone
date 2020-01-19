using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project4
{
    public class User
    {
        public String name;
        public String eMail;
        public String birthDate;
        public int Phone;
        public String bio;
        public String pic;
        public int points;

        public User()
        {

        }

        public User(String name,String eMail,String birthDate,int phone,String bio,String pic,int points)
        {
            this.name = name;
            this.eMail = eMail;
            this.birthDate = birthDate;
            this.Phone = phone;
            this.bio = bio;
            this.pic = pic;
            this.points = points;
        }
    }
}