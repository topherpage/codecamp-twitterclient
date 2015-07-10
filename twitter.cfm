<form method = "get" name = "Tweets"> 
    <p>Tweet Here</p>
    <textarea style="width:200px; height:110px" data-maxsize="140" wrap="virtual" validate="maxlength" maxlength="140"></textarea>
    <p>Username</p>
    <textarea style="width:100px; height:25px" data-maxsize="10"></textarea>
    <br />
   
    <input type="submit" data-maxsize="140" value="Post your Tweet!" >
</form>

<cfquery name="myQuery" datasource="the-db"> 
    SELECT * FROM twitter_post
    ORDER BY created_date ASC
</cfquery>

<html>
    <head>
        <title>Tweets</title>
    </head>
    <body>

        <table>
            <tr>
                <th>Tweets</th>
                <th>Buddy</th>
            </tr>
            <CFOUTPUT QUERY="myQuery">
                <tr>
                    <td>#post#</td>
                    <td>#user_name#</td>
                </tr>
            </CFOUTPUT>
        </table>
    </body>
</html>