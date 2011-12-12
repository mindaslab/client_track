class NotesController < ApplicationController
  def create
    @client = Client.find(params[:client_id])
    @note = @client.notes.create(params[:note])
    redirect_to client_path(@client)
  end
  
  def destroy
    @client = Client.find(params[:client_id])
    @note = @client.notes.find(params[:id])
    @note.destroy
    redirect_to client_path(@client)
  end
  
  def update
	@client = Client.find(params[:client_id])
    @note = @client.notes.find(params[:id])
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to @client, notice: 'Note was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
	@client = Client.find(params[:client_id])
    @note = @client.notes.find(params[:id])
  end
end
