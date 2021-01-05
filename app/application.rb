


class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now.hour

        if time >= 12
            resp.write "-/Afternoon/i"
        else
            resp.write "-/Morning/i"
        end

        resp.finish
    end

    
end