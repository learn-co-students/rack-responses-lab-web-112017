class Application

  def call(env)
    response = Rack::Response.new
    time = Time.now.hour

    if time < 12
      response.write "Good Morning"
    elsif time > 12
      response.write "Good Afternoon"
    end

    response.finish
  end

end
