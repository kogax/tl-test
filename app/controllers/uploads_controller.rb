class UploadsController < ApplicationController
  include Transloadit::Rails::ParamsDecoder

  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])
    @upload.filename = params[:transloadit][:results][":original"][0]["name"]
    @upload.url= params[:transloadit][:results][":original"][0]["url"]
    @upload.save
  end
end
