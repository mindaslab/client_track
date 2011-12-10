class NotesController < ApplicationController
  def create
    @client = Client.find(params[:client_id])
    @note = @client.notes.create(params[:note])
    redirect_to client_path(@client)
  end
end
