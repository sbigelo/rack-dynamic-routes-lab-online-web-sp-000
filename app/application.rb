class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<Item Name>"
      resp.write @@item[0].price
    else
      resp.write "3.42 Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
