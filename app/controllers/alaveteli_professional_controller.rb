# -*- encoding : utf-8 -*-
class AlaveteliProfessionalController < ApplicationController

  def login
  end

  def frontpage
    render :frontpage, :layout => false
  end

  def find_auth
    render :find_auth, :layout => 'pro'
  end

  def find_auth_2
    render :find_auth_2, :layout => 'pro'
  end

  def write_request
    render :write_request, :layout => 'pro'
  end

  def preview_request
    render :preview_request, :layout => 'pro'
  end

  def dashboard
    render :dashboard, :layout => 'pro'
  end

  def marketing
    render :marketing, :layout => 'pro'
  end

end