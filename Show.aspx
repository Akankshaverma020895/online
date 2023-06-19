<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="online.Show" %>
<%@ Import Namespace="online" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <!-- Courses Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                <h1 class="mb-5">Popular Courses</h1>
            </div>
            <div class="row g-4 justify-content-center">


                <%
                    DbWork db = new DbWork();
                    db.reader = db.getcourseinfo();
                    while (db.reader.Read()) {


                    %>


                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                 <div class="course-item bg-light">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="Admin/image/<%=db.reader["coimage"] %>">
                        </div>
                        <div class="text-center p-4 pb-0">
                            <h3 class="mb-0">$149.00</h3>
                            <div class="mb-3">
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small class="fa fa-star text-primary"></small>
                                <small>(123)</small>
                            </div>



                           <a href="singlecourse.aspx?<%db.reader["slug"] %>"> <h5 class="mb-4"><%=db.reader["coname"] %></h5></a>
                        </div>
                     <div class="d-flex border-top">
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i><%=db.reader["coprice"] %></small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i><%=db.reader["coduration"] %></small>
                           
                        </div>
                    </div>
                     </div>



                <%


                    }
                    %>



            </div>





        </div>
    </div>


                    
    <!-- Courses End -->
</asp:Content>
