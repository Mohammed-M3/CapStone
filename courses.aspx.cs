using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project4
{
    public partial class courses : System.Web.UI.Page
    {

        public String JsonCourses;
        public Course[] courses1 = new Course[3];
       
        protected void Page_Load(object sender, EventArgs e)
        {

            Course c = new Course("Java", 1, "java", 0, "pro", "img/java.png", 0, "null", "m@hotmail.com");
            Course c2 = new Course("hi", 2, "java", 0, "pro", "img/java.png", 0, "null", "m@hotmail.com");
            Course c3 = new Course("lol", 3, "java", 0, "pro", "img/java.png", 0, "null", "m@hotmail.com");

            courses1[0] = c;
            courses1[1] = c2;
            courses1[2] = c3;

            JsonCourses = new JavaScriptSerializer().Serialize(courses1);
        }
    }
}