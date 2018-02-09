class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @company = Company.find(params[:company_id])
    @client = Client.new
  end

  def create
    @company = Company.find(params[:company_id])
    @client = @company.clients.new(client_params)
    if @client.save
      flash[:notice] = "The Client has been saved!"
      redirect_to clients_path
    else
      render :new
    end
  end

  def edit
    @company = Company.find(params[:company_id])
    @client = Client.find(params[:id])
  end

  def update
    @company = Company.find(params[:company_id])
    @client = Client.find(params[:id])
    if @client.update(client_params)
      flash[:notice] = "Your client has been updated!"
      redirect_to company_path(@company)
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:company_id])
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to company_path(@company)
  end
end

def set_client
  @client = Client.find(params[:id])
end

def client_params
  params.require(:client).permit(:name, :contact, :position, :meetings, :email, :formatting, :other)
end
