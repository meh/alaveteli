# app/controllers/admin_track_controller.rb:
# Show email alerts / RSS feeds from admin interface.
#
# Copyright (c) 2008 UK Citizens Online Democracy. All rights reserved.
# Email: francis@mysociety.org; WWW: http://www.mysociety.org/
#
# $Id: admin_track_controller.rb,v 1.4 2008-07-28 18:04:38 francis Exp $

class AdminTrackController < ApplicationController
    layout "admin"
    before_filter :assign_http_auth_user

    def list
        @query = params[:query]
        @admin_tracks = TrackThing.paginate :order => "created_at desc", :page => params[:page], :per_page => 100,
            :conditions =>  @query.nil? ? nil : ["lower(track_query) like lower('%'||?||'%')", @query ]
    end

    private

end
