class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour
    if time.to_i < 12
      text = "Good Morning!"
    else
      text = "Good Afternoon!"
    end
    resp.write "#{text}"
    resp.finish
  end
end
