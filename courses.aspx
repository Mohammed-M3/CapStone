<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="project4.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans" rel="stylesheet"/>
    <link rel="stylesheet" href="css/styles-merged.css"/>
    <link rel="stylesheet" href="css/style.min.css"/>
    <link rel="stylesheet" href="css/custom.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="probootstrap-section">
        <div class="container">
          
           
        </div>
        
      </section>







    <script>
        let courses = <%=JsonCourses%>;
        (function () {

    let row = document.createElement('div');
        row.className = 'row';

        let col = document.createElement('div');
    col.className = 'col-md-6';

        let col2 = document.createElement('div');
        col2.className = 'col-md-6';

            for (let i = 0; i < courses.length; i++) {

        let inmate = document.createElement('div');
        inmate.className = 'probootstrap-service-2 probootstrap-animate';

        let imgDiv = document.createElement('div');
        imgDiv.className = 'image';

        let imgBG = document.createElement('div');
        imgBG.className = 'image-bg';

                let img = document.createElement('img');
                img.src = courses[i].pic;

        //
        imgBG.appendChild(img);
        imgDiv.appendChild(imgBG);


        /** text******/
    
        let text = document.createElement('div');
        text.className = "text";

        let spanMeta = document.createElement('span');
        spanMeta.className = "probootstrap-meta";

        let icon = document.createElement('i');
        icon.classList.add('icon-calendar2');

                let header = document.createElement('h3');
                header.textContent = courses[i].name;

                let info = document.createElement('p');
                info.textContent = courses[i].info;

        let p = document.createElement('p');
        let btn = document.createElement('a');
        btn.classList.add('btn');
        btn.classList.add('btn-primary');
        btn.classList.add(courses[i].cid);
        btn.href = 'coursePage.aspx?id=' + courses[i].cid;
        btn.textContent = 'More Details';
        p.appendChild(btn);
        btn.ins

        ///
        text.appendChild(spanMeta);
        text.appendChild(icon);
        text.appendChild(header);
        text.appendChild(info);
        text.appendChild(p);




        ///
        inmate.appendChild(imgDiv);
        inmate.appendChild(text);
        if (i%2==0) {
            col2.appendChild(inmate);
            row.appendChild(col2);
        }
        else {
            col.appendChild(inmate);
            row.appendChild(col);
        }
        

        document.querySelectorAll('.container')[1].appendChild(row);
    }
    
        })();
    </script>
</asp:Content>
