class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now

    if 12 < t.hour
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end


end
