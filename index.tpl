<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Miðannarverkefni</title>
    <link rel="stylesheet" type="text/css" href="/static/stylesheet.css">
</head>
<body>
    <%
    companies = []

    for station in data['results']:
        if station['company'] not in companies:
                companies.append(station['company'])
        end
    end
    %>

    % include('header.tpl')
    <div class="mainpage">
        <div class="images">
            <img src="/static/ao.png">
            <img src="/static/costco.png">
            <img src="/static/daelan.png">
            <img src="/static/n1.png">
            <img src="/static/ob.png">
            <img src="/static/olis.png">
            <img src="/static/orkan.png">
            <img src="/static/orkanx.png">
        </div>

        %for c in companies:
        <div class="companies">
            <a href="/company/{{c}}">{{c}}</a><br>
        </div>
        %end

        %t = data['timestampPriceCheck']
        %t= t[:19]
        %t= datetime.datetime.strptime(t,'%Y-%m-%dT%H:%M:%S')
        <h4>Uppfært: {{t.strftime('%d %m %y Kl. %H: %m')}}(datetime)</h4>

        <h4>Uppfært:{{data['timestampPriceCheck'][8:-13]}} {{data['timestampPriceCheck'][5:-16]}} {{data['timestampPriceCheck'][:4]}}
            Kl. {{data['timestampPriceCheck'][-12:]}} (Substring)</h4>

        <%
        cheapestbensin95 = []
        for small in data['results']:
            if small['bensin95'] not in cheapestbensin95:
                cheapestbensin95.append(small['bensin95'])
            end
        end
        %>
        <h4>{{min(cheapestbensin95[''])}}</h4>

        <a href="/" class="homehref">Heim</a>
    </div>
</body>
</html>