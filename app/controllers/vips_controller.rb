class VipsController < ApplicationController



      def index
        @vips = Vip.all
      end

      def show
        @vip = Vip.find(params[:id])
      end

      def new

        @vip = Vip.new
      end




  def edit
    @vip = Vip.find(params[:id])
  end

      def create
      	 @vip = Vip.new(vip_params)
         @vip.title = current_user.title

      # @vip = current_user.vips.new(vip_params)
       if @vip.save
          ZapierRuby.configure do |c|
          c.web_hooks = {example_zap: "b75gl2"}
          c.enable_logging = true
          zapper = ZapierRuby::Zapper.new(:example_zap)
          zapper.zap({name: @vip.name, title: @vip.title,
                      email: @vip.email, month: @vip.month})
          end

        redirect_to new_vip_path
       else

        redirect_to @vip
     end

 

      
  
  #end
end
   private


   def vip_params
    params.require(:vip).permit(:name,:email,:title,:month)
  end 
end
 