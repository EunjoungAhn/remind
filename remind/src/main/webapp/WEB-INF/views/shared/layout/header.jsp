<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- HEAdER -->
 <header>
   <div class="inner">
     <a href="/home" class="logo">
       <img src="${pageContext.request.contextPath}/resources/img/remind_logo.jpg" alt="remind logo" />
     </a>

     <div class="sub-menu">
       <ul class="menu">
         <li>
           <a href="/user/register">Sign In</a>
         </li>
         <li>
           <a href="/user/myMemoryEdit">My Memory</a>
         </li>
       </ul>

       <div class="search">
         <input type="text" />
         <span class="material-icons">search</span>
       </div>
     </div>

   </div>
 </header>