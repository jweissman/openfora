class LeavesController < ApplicationController
  # GET /leaves
  # GET /leaves.json
  def index
    @leaves = Leaf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leaves }
    end
  end

  # GET /leaves/1
  # GET /leaves/1.json
  def show
    @leaf = Leaf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leaf }
    end
  end

  # GET /leaves/new
  # GET /leaves/new.json
  def new
    @leaf = Leaf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leaf }
    end
  end

  # GET /leaves/1/edit
  def edit
    @leaf = Leaf.find(params[:id])
  end

  # POST /leaves
  # POST /leaves.json
  def create
    @leaf = Leaf.new(params[:leaf])

    respond_to do |format|
      if @leaf.save
        format.html { redirect_to @leaf, notice: 'Leaf was successfully created!' }
        format.json { render json: @leaf, status: :created, location: @leaf }
      else
        format.html { render action: "new" }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leaves/1
  # PUT /leaves/1.json
  def update
    @leaf = Leaf.find(params[:id]).becomes(Leaf)


    respond_to do |format|
      if @leaf.update_attributes(params[:leaf])
        format.html { redirect_to @leaf, notice: 'Leaf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaves/1
  # DELETE /leaves/1.json
  def destroy
    @leaf = Leaf.find(params[:id])
    @leaf.destroy

    respond_to do |format|
      format.html { redirect_to leaves_url }
      format.json { head :no_content }
    end
  end
end
