class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now.strftime("%H:%M:%S")


    if current_time < "12:00:00"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
