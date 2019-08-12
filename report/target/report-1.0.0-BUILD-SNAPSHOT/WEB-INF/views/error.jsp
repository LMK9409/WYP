<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>
<!doctype html>
<html lang="jp">
    <head>
        <title>Page Not Found</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

        <!-- Styles -->
         <link href="<c:url value="/resources/css/error.css" />"  rel="stylesheet">
    </head>
    <body class="antialiased font-sans">
        <div class="md:flex min-h-screen">
            <div class="w-full md:w-1/2 bg-white flex items-center justify-center">
                <div class="max-w-sm m-8">
                    <div class="text-black text-5xl md:text-15xl font-black">
                        エラー
                    </div>
                    <div class="w-16 h-1 bg-purple-light my-3 md:my-6"></div>
                    <p class="text-grey-darker text-2xl md:text-3xl font-light mb-8 leading-normal">
                        お探しのページは見つかりません。                    </p>
						<a href="<c:url value="/" />"><button class="bg-transparent text-grey-darkest font-bold uppercase tracking-wide py-3 px-6 border-2 border-grey-light hover:border-grey rounded-lg">
                            ログイン画面へ
                        </button></a>
                </div>
            </div>
        </div>
    </body>
</html>
