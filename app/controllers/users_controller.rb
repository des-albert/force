class UsersController < ApplicationController
  def input
  end
  def login
    client = Restforce.new(username: params[:user][:username],
                           password: params[:user][:password],
                           security_token: params[:user][:token],
                           client_id: '3MVG9zlTNB8o8BA33KqphDF3JCyUv00f_fZU4I6LAsDDhr8YPzkLJLUBnvlgK536essPLq7i_k6OXGAW0Xij7',
                           client_secret: '4583116758607879757',
                           api_version: '42.0')
    @@opportunities = client.query("SELECT Description, Id, Name, StageName FROM Opportunity WHERE TrackingNumber__c = '3409292'")
    redirect_to results_path
  end
  def show
    @opp = @@opportunities.first
  end
end
