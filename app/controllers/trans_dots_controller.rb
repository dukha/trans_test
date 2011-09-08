class TransDotsController < ApplicationController
  # GET /trans_dots
  # GET /trans_dots.xml
  #before_filter :authenticate_user!

  @@model_translation_code =$ARM #+ "trans_dot.one"
  
  def index
    @trans_dots = TransDot.paginate(:page => params[:page], :per_page=>15)  #TransDot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trans_dots }
    end
  end

  # GET /trans_dots/1
  # GET /trans_dots/1.xml
  def show
    @trans_dot = TransDot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trans_dot }
    end
  end

  # GET /trans_dots/new
  # GET /trans_dots/new.xml
  def new
    @trans_dot = TransDot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trans_dot }
    end
  end

  # GET /trans_dots/1/edit
  def edit
    @trans_dot = TransDot.find(params[:id])
  end

  # POST /trans_dots
  # POST /trans_dots.xml
  def create
    @trans_dot = TransDot.new(params[:trans_dot])

    respond_to do |format|
      if @trans_dot.save
        flash[:success] = t('messages.create.success', :model=>t(@@model_translation_code))          
        format.html { redirect_to( :action => "index")} #(@trans_dot #, :notice => 'Trans dot was successfully created.') }
        format.xml  { render :xml => @trans_dot, :status => :created, :location => @trans_dot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trans_dot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trans_dots/1
  # PUT /trans_dots/1.xml
  def update
    @trans_dot = TransDot.find(params[:id])

    respond_to do |format|
      if @trans_dot.update_attributes(params[:trans_dot])
        flash[:success] = t('messages.update.success', :model=>t(@@model_translation_code))
        format.html { redirect_to( :action => "index")} #(@trans_dot, :notice => 'Trans dot was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trans_dot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_dots/1
  # DELETE /trans_dots/1.xml
  def destroy
    @trans_dot = TransDot.find(params[:id])
    @trans_dot.destroy

    respond_to do |format|
      format.html { redirect_to(trans_dots_url) }
      format.xml  { head :ok }
    end
  end
end
