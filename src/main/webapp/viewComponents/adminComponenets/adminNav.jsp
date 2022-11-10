<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 11/10/2022
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
  <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
</head>


<body>
<nav class="bg-white border-gray-200 sm:px-4 shadow-xl">
  <div class="container flex flex-row items-center gap-x-10 py-4">
    <div class="logo">
      <img src="../../Simplon_co.png" alt="simplon_logo" width="120" height="50"/>
    </div>
    <div class="hidden justify-between items-center w-full md:flex md:w-auto md:order-1" id="navbar-cta">
      <ul class="flex flex-col bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:text-sm md:bg-white ">
        <li>
          <a href="/AdminServlet?field=formateurs&op=read" class="block py-2 pr-4 pl-3 text-gray-700 bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 text-[18px]" aria-current="page">Teachers</a>
        </li>
        <li>
          <a href="/AdminServlet?field=apprenants&op=read" class="block py-2 pr-4 pl-3 text-gray-700 rounded hover:text-blue-700 text-[18px]">Learners</a>
        </li>
        <li>
          <a href="/AdminServlet?field=promotions&op=read" class="block  py-2 pr-4 pl-3 text-gray-700 rounded hover:text-blue-700 text-[18px]">Promotions</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>
