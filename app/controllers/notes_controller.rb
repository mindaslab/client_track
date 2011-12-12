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
  
  end
  
  def edit
  end
end
