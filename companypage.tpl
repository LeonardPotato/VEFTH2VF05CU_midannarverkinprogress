<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="/static/stylesheet.css">
    <title>Fyrirtæki</title>
</head>
<body>
    % include('header.tpl')
    <div class="companypage">
        <h1>Bensínstöðvar</h1>
        <br>
        <table>
            <tbody>
            <tr>
                <th>Fyrirtæki</th>
                <th>Staður</th>
            </tr>


            % for name in data['results']:
                % if name['company'] == route:
                <tr class="bensinstod">
                    <td>{{name['company']}}</td>
                    <td><a href="/moreinfo/{{name['key']}}">{{name['name']}}</a></td>
                </tr>
                %end
            % end


            </tbody>
        </table>

        <a href="/" class="homehref">Heim</a>
    </div>
</body>
</html>