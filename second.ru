require 'rack'

class MyServer 
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, pretty_response]
    end 

    # When the present time, as an Integer, is even, the output is emphatic; when odd, it's strong.
    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end 
end 

run MyServer.new