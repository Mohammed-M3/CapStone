using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project4
{
    public partial class coursePage : System.Web.UI.Page
    {
        public String course;
        public String publisher;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            

            Course c = new Course("Java", int.Parse(Request.QueryString["id"]), "java", 0, "pro", "img/java.png", 0, "null", "m@hotmail.com");

            course = new JavaScriptSerializer().Serialize(c);

            User u = new User("khalid almoamer", "m@hotmail.com", "null", 050534, "Faculty at king saud univercity", "img/java.png", 0);

            publisher = new JavaScriptSerializer().Serialize(u);
        }
    }
}