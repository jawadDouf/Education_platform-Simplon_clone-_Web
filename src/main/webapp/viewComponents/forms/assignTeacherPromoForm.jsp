<%@ page import="com.example.simplon_clone_fb.Models.FormateursModel" %>
<%@ page import="com.example.simplon_clone_fb.Services.AdminServices" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 11/11/2022
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="../../cssModules/index.css">
</head>
<body>
<div id="overlay_22" class="bg-[#808080] w-full h-screen absolute cursor-pointer top-0"></div>
<div id="assign_form_container2" class=" absolute top-1/4 left-1/3 transform -translate-x-1/3 -translate-y-1/4 mx-auto max-w-md px-6 py-12 bg-white border-0 shadow-lg sm:rounded-3xl z-20">
  <h1 class="text-2xl text-center font-bold mb-8">Assign teacher to promo</h1>
  <form action="/AdminServlet?field=promotions&op=assign" method="post">

    <div class="relative z-0 w-full mb-5">
      <input
              type="text"
              name="promoname"
              value="Chosen Teacher"
              disabled
              class="w-full text-base px-4 py-2 border-b border-gray-300 focus:outline-none rounded-2xl focus:border-indigo-500"
              id="promoToAssignInput"
      />
      <input  class="invisible" id="invisibleInputForNakedEye"/>


    </div>
    <%
      //promotions
      List<FormateursModel> formateursList = new AdminServices().getAll("formateurs");
    %>
    <div class="w-full text-sm font-medium h-[200px] overflow-scroll text-gray-900 bg-white border-gray-200">
      <%
        for (FormateursModel formateur: formateursList
        ) {
      %>
      <li class="block py-2 px-4 my-[1px] hover:bg-gray-200 w-full text-black bg-gray-300 border-b rounded-lg border-gray-200 cursor-pointer" class="promotion">
        <%= formateur.getNom()%> <%= formateur.getPrenom() %>
      </li>
      <input hidden id="invisible" name="promotion" value="<%= formateur.getId() %>" />
      <%}%>
    </div>
    <input
            type="submit"
            class="w-full flex justify-center bg-gradient-to-r from-indigo-500 to-blue-600 hover:bg-gradient-to-l hover:from-blue-500 hover:to-indigo-600 text-gray-100 p-3  rounded-lg font-medium mt-5  shadow-lg cursor-pointer transition ease-in duration-500"
    />
  </form>
</div>
<script src="../../jsModules/events.js"></script>
<script src="../../jsModules/events2.js"></script>
<script src="../../jsModules/assignTeachers.js"></script>
</body>
</html>
