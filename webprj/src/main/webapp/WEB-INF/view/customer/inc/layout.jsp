<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     tiles 설정 -->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!-- tiles 설정 -->
    <title><tiles:getAsString name="title"></tiles:getAsString></title>
    
    <link href="/css/customer/layout.css" type="text/css" rel="stylesheet" />
    <style>
    
        #visual .content-container{	
            height:inherit;
            display:flex; 
            align-items: center;
            
            background: url("../../images/customer/visual.png") no-repeat center;
        }
    </style>
</head>

<body>
    <!-- header 부분 -->
    
    <!-- tiles 설정 -->
	<tiles:insertAttribute name="header" />
	<!-- --------------------------- <visual> --------------------------------------- -->
	<!-- visual 부분 -->
	

	<!-- --------------------------- <body> --------------------------------------- -->
	<div id="body">
		<div class="content-container clearfix">

			<!-- --------------------------- aside --------------------------------------- -->
			<!-- aside 부분 -->
			<!-- tiles 설정 -->
			<tiles:insertAttribute name="aside" />


			<!-- --------------------------- main --------------------------------------- -->
			<!-- tiles 설정 -->
			<tiles:insertAttribute name="body" />

		
			
		</div>
	</div>

    <!-- ------------------- <footer> --------------------------------------- -->
    	<!-- tiles 설정 -->
		<tiles:insertAttribute name="footer" />
    </body>
    
    </html>