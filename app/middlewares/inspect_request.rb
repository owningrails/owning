class InspectRequest
  def initialize(app)
    @app = app
  end
  
  def call(env)
    puts env
    @app.call(env)
  end
end