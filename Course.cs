using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project4
{
    public class Course
    {
        public String name;
        public int cid;
        public String info;
        public int fee;
        public String category;
        public String pic;
        public int status;
        public String lastUpdate;
        public String publisher;


        public Course()
        {
            
        }

        public Course(String name,int cid,String info,int fee, String category,String pic, int status, String lastUpdate,String publisher)
        {
            this.name = name;
            this.cid = cid;
            this.info = info;
            this.fee = fee;
            this.category = category;
            this.pic = pic;
            this.status = status;
            this.lastUpdate = lastUpdate;
            this.publisher = publisher;

        }

    }
}