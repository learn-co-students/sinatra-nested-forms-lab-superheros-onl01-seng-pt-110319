class Team

    attr_reader :name, :motto

    def initialize(params)
        @name = params[:team][:name]
        @motto = params[:team][:motto]
    end

end