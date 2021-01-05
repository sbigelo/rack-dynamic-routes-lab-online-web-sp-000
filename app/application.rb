class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      if @@item.empty?
        resp.write "Item not found"
      else

        end
    else
      resp.write "3.42 Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
