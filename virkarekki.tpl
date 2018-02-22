        %t = data['timestampPriceCheck']
        %t= t[:19]
        %t= datetime.datetime.strptime(t,'%Y-%m-%dT%H:%M:%S')
        <h4>uppfært: {{t.strptime('%d %m %y':)}}</h4>