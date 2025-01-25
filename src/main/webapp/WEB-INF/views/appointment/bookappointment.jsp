<%@page import="java.util.List" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- for jstl tag -->
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!-- end of jstl tag -->
            <%@page isELIgnored="false" %>


                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title>Book Appointment Page</title>
                    <!-- all css include -->

                    <!-- customs css for this page -->
                    <style type="text/css">
                        .my-card {
                            box-shadow: 0px 0px 10px 1px maroon;
                            /*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
                        }

                        /* backgournd image css */

                        .my-bg-img {
                            background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)), url("img/hospital1.jpg");
                            height: 20vh;
                            width: 100%;
                            background-size: cover;
                            background-repeat: no-repeat;

                        }

                        /* backgournd image css */

                        * {
                            margin: 0;
                            padding: 0;
                            box-sizing: border-box;
                        }

                        body {
                            font-family: Arial, sans-serif;
                            background-color: #f9f9f9;
                            display: flex;
                            height: 100vh;
                            overflow: hidden;
                        }

                        .sidebar {
                            width: 250px;
                            background-color: #ffffff;
                            border-right: 1px solid #ddd;
                            display: flex;
                            flex-direction: column;
                            padding: 20px;
                        }

                        .sidebar .logo {
                            margin-bottom: 30px;
                            font-size: 1.5rem;
                            font-weight: bold;
                            color: #7c4efb;
                        }

                        .sidebar .menu {
                            list-style: none;
                        }

                        .sidebar .menu li {
                            margin-bottom: 20px;
                        }

                        .sidebar .menu li a {
                            text-decoration: none;
                            color: #444;
                            font-size: 1rem;
                            display: flex;
                            align-items: center;
                        }

                        .sidebar .menu li a:hover {
                            color: #7c4efb;
                        }

                        .sidebar .menu li a span {
                            margin-left: 10px;
                        }

                        .main-content {
                            flex: 1;
                            padding: 20px;
                            display: flex;
                            flex-direction: column;
                            gap: 20px;
                        }
                    </style>
                    <!-- end of customs css for this page -->

                </head>

                <body>
                    <div class="sidebar">
                        <div class="logo">MindHaven</div>
                        <ul class="menu">
                            <li><a href="#"><span>🏠</span> Home</a></li>
                            <li><a href="/appointment/list_appointment"><span>📅</span> Appointments</a></li>
                            <li><a href="/patient/list_patient"><span>📋</span> Patient Record</a></li>
                            <li><a href="/user/user_management"><span>👤</span> User Management</a></li>
                            <li><a href="/setting/system_setting"><span>⚙️</span> System Settings</a></li>
                            <li><a href="/setting/general_setting"><span>🛠️</span> General Settings</a></li>
                            <li><a href="/test/list_test"><span>🧪</span> Self-Test</a></li>
                        </ul>
                    </div>

                    <!-- start 1st Div -->

                    <!-- <div class="container-fluid my-bg-img p-5">
                        <p class="text-center fs-2 text-white"></p>
                    </div> -->

                    <!-- end of 1st Div -->


                    <!-- 2nd Div -->
                    <div class="main-content">
                        <!-- <div class="container p-3"> -->
                        <p class="fs-2"></p>

                        <div class="row">

                            <!-- col-1 -->
                            <div class="col-md-6 p-5">
                                <!-- for Background image -->
                                <!-- <img alt="" src="img/picDoc.jpg" width="500px" height="400px"> -->
                                <img alt="" src="img/doc3.jpg" width="370" height="">
                            </div>

                            <!-- col-2 -->
                            <div class="col-md-6">
                                <div class="card my-card">
                                    <div class="card-body">
                                        <p class="text-center fs-3">User Appointment</p>

                                        <!-- message print -->
                                        <!-- for success msg -->
                                        <c:if test="${not empty successMsg }">
                                            <p class="text-center text-success fs-5">${successMsg}</p>
                                            <c:remove var="successMsg" scope="session" />
                                        </c:if>

                                        <!-- for error msg -->
                                        <c:if test="${not empty errorMsg }">
                                            <p class="text-center text-danger fs-5">${errorMsg}</p>
                                            <c:remove var="errorMsg" scope="session" />
                                        </c:if>
                                        <!-- End of message print -->


                                        <!-- boostrap form -->
                                        <form class="row g-3" action="addAppointment" method="post">

                                            <!-- take user Id in hidden field -->
                                            <input type="hidden" name="userId" value="${ userObj.id }">

                                            <div class="col-md-6">
                                                <label class="form-label">Full Name</label> <input required="required"
                                                    name="fullName" type="text" placeholder="Enter full name"
                                                    class="form-control">

                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Gender</label> <select class="form-control"
                                                    name="gender" required="required">
                                                    <option selected="selected" disabled="disabled">---Select
                                                        Gender---</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                </select>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Age</label> <input name="age"
                                                    required="required" type="number" placeholder="Enter your Age"
                                                    class="form-control">
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Appointment Date</label> <input
                                                    required="required" name="appointmentDate" type="date"
                                                    class="form-control">
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Email</label> <input name="email"
                                                    required="required" type="email" placeholder="Enter email"
                                                    class="form-control">
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Phone</label> <input name="phone"
                                                    required="required" type="number" maxlength="11"
                                                    placeholder="Enter Mobile no." class="form-control">
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Diseases</label> <input required="required"
                                                    name="diseases" type="text" placeholder="Enter diseases"
                                                    class="form-control">
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Doctor</label> <select required="required"
                                                    class="form-control" name="doctorNameSelect">
                                                    <option selected="selected" disabled="disabled">---Select---
                                                    </option>

                                                    <% DoctorDAO doctorDAO=new DoctorDAO(DBConnection.getConn());
                                                        List<Doctor> listOfDoctor = doctorDAO.getAllDoctor();
                                                        for(Doctor d : listOfDoctor)

                                                        {%>
                                                        <!-- actually we take id of doctor from doctor table -->
                                                        <option value="<%= d.getId() %>">
                                                            <%= d.getFullName()%> (<%= d.getSpecialist() %>)
                                                        </option>

                                                        <% } %>

                                                            <!-- <option>Doctor name</option> -->
                                                </select>
                                            </div>


                                            <!-- below are visible to right side part of form-->

                                            <div class="col-md-12">
                                                <label class="form-label">Full Address</label>
                                                <textarea name="address" required="required" class="form-control"
                                                    rows="3" cols=""></textarea>
                                            </div>


                                            <c:if test="${empty userObj}">
                                                <div class="col-md-12">
                                                    <a href="user_login.jsp"
                                                        class="btn my-bg-color text-white col-md-12">Submit</a>
                                                </div>
                                            </c:if>


                                            <c:if test="${not empty userObj}">

                                                <div class="col-md-12">
                                                    <button type="submit"
                                                        class="btn my-bg-color text-white col-md-12">Submit</button>
                                                </div>

                                            </c:if>

                                        </form>

                                        <!-- end of boostrap form -->

                                    </div>
                                </div>

                            </div>



                        </div>


                        <!-- </div> -->

                    </div>

                </body>

                </html>