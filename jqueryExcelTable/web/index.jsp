<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery-3.2.0.js" type="text/javascript"></script>
        <title>JSP Page</title>
        <script>
            $(function () {
                $(".xlstable tbody").on("scroll", function () {
                    $(".xlstable thead").css("left", -$(this).scrollLeft() + "px");
                    $(this).find("tr td:nth-child(1)").css("left", $(this).scrollLeft());
                    $(".xlstable thead").find("tr th:nth-child(1)").css("left", $(this).scrollLeft());
                });

                $(".xlstable td").on("mouseover", function () {
                    $(".xlstable .selected").removeClass("selected");
                    $(".xlstable thead th").eq($(this).parents("tr").eq(0).find("td").index(this)).addClass("selected");
                    $(this).parents("tr").eq(0).find("td:first").addClass("selected");
                });
            });
        </script>
        <style>
            /* width */
            ::-webkit-scrollbar {
                width: 10px;
                height:10px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: white; 
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888; 
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555; 
            }

            .xlstable .selected{
                background:blue !important;
                color:white !important;
                border:none;
            }

            *{
                padding:0px;
                margin:0px;
            }

            .xlstable{ 
                box-shadow:1px 1px 2px #888;
                border:1px solid black;
                top:100px;
                left:100px;
                border-collapse: collapse;
                display:block;
                width:400px;
                height:200px;
                overflow:hidden;
                position: relative;
                table-layout: fixed;
            }

            .xlstable thead{
                position: relative;
                display:block;
            }

            .xlstable tbody{
                border-top:1px solid black;
                height:calc(100% - 30px);
                position: relative;
                display:block;
                overflow:scroll;
            }

            .xlstable td:nth-child(1), .xlstable th:nth-child(1){
                border-right:1px solid black;
                display:block;
                z-index:900;
                margin:0 !important;
                padding:0 !important;
                border-collapse: collapse !important;
            }

            .xlstable td:hover{
                cursor:pointer;
                background:#ccc !important;
            }

            .xlstable tr:nth-child(odd), .xlstable tr:nth-child(odd) td,.xlstable tr:nth-child(odd)  th{
                background:#eee;
            }

            .xlstable tr:nth-child(even), .xlstable tr:nth-child(even) td, .xlstable tr:nth-child(even) th{
                background:white;
            }

            .xlstable th, .xlstable td{
                text-align:center;
                vertical-align: middle;
                position: relative;
                min-width:100px;
                line-height:30px;
            }
        </style>
    </head>
    <body>
        <table class='xlstable'>
            <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th>A</th>
                    <th>B</th>
                    <th>C</th>
                    <th>D</th>
                    <th>E</th>
                    <th>F</th>
                    <th>G</th>
                    <th>H</th>
                    <th>I</th>
                    <th>J</th>
                    <th>K</th>
                    <th>L</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>1</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>2</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>3</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>4</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>5</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>6</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>7</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>8</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>9</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>10</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>11</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>12</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
                <tr><td>13</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td></tr>
            </tbody>
        </table>
    </body>
</html>
