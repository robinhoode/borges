class DashboardController < ApplicationController
  before_filter :authenticate_user! 
  authorize_resource :class => false

  autocomplete :publisher,:name,:full=>true,:display_value=>:name_and_id
  autocomplete :title_list,:name,:full=>true,:display_value=>:name

  # GET /titles
  # GET /titles.json

  def index
    @purchase_orders=PurchaseOrder.order("created_at DESC").limit(10)

  end

  def titles
    if ! params[:searchquery].blank? 
      searchquery=params[:searchquery]
      @searchquery=searchquery
      @title_search = Title.search do
        fulltext searchquery
        paginate :page => params[:page], :per_page => 20
      end
      @titles=@title_search.results
    else
      @titles = Title.page(params[:page]).per(20)
    end
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end


end