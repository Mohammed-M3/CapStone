<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="coursePage.aspx.cs" Inherits="project4.coursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="css/custom.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
      <section class="probootstrap-section probootstrap-section-colored">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-left section-heading probootstrap-animate">
              <h1>Chemical Engineering</h1>
            </div>
          </div>
        </div>
      </section>

      

      <section class="probootstrap-section probootstrap-section-sm">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="row probootstrap-gutter0">
                <div class="col-md-4" id="probootstrap-sidebar">
                  <div class="probootstrap-sidebar-inner probootstrap-overlap probootstrap-animate">
                    <h3>Course Publisher</h3>
                    <img class="publisher" src="#" width="200px;" height="200px;" style="margin-left: 5%;">
                    <p class="info">
                    </p>
                  </div>
                </div>
                <div class="col-md-7 col-md-push-1  probootstrap-animate" id="probootstrap-content">
                  <h2>Course Description</h2>
                  <p class="info"></p>
                  <p><a href="#" class="btn btn-primary">Enroll with this course now</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    <!-- END wrapper -->

    <script>
        let course = <%=course%>;
        let publisher = <%=publisher%>;

        document.querySelector('.col-md-12').innerHTML = "<h1>" + course.name + "</h1>";
        document.querySelector('h3').textContent = publisher.name;
        document.querySelector('.publisher').src = publisher.pic;
        document.querySelector('.info').textContent = publisher.bio;
        document.querySelectorAll('.info')[1].textContent = course.info;
        
    </script>
    
</asp:Content>
