<%-- 
    Document   : headerAdmin
    Created on : May 31, 2013, 1:46:10 PM
    Author     : Shan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator page</title>

        <script type="text/javascript">
            function confirmation() {
                var result;

                if (confirm('Are you sure?')) {
                    result = true;
                } else {
                    result = false;
                }

                return result;
            }
        </script>
    </head>