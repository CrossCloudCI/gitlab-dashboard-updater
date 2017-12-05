module CrossCloudCI
  module DashboardUtils
    def load_users_api_host_port
      case ENV["GITLAB_USER_EMAIL"]
      when ENV["LUCINA_EMAIL"]
        dashboard_api_host_port=ENV["LUCINA_DASHBOARD_API_HOST_PORT"] if ENV["LUCINA_DASHBOARD_API_HOST_PORT"]
      when ENV["WAVELL_EMAIL"]
        dashboard_api_host_port=ENV["WAVELL_DASHBOARD_API_HOST_PORT"] if ENV["WAVELL_DASHBOARD_API_HOST_PORT"]
      when ENV["JOSH_EMAIL"]
        dashboard_api_host_port=ENV["JOSH_DASHBOARD_API_HOST_PORT"] if ENV["JOSH_DASHBOARD_API_HOST_PORT"]
      when ENV["TAYLOR_EMAIL"]
        dashboard_api_host_port=ENV["TAYLOR_DASHBOARD_API_HOST_PORT"] if ENV["TAYLOR_DASHBOARD_API_HOST_PORT"]
      when ENV["DENVER_EMAIL"]
        dashboard_api_host_port=ENV["DENVER_DASHBOARD_API_HOST_PORT"] if ENV["DENVER_DASHBOARD_API_HOST_PORT"]
      when ENV["ANDRE_EMAIL"]
        dashboard_api_host_port=ENV["ANDRE_DASHBOARD_API_HOST_PORT"] if ENV["ANDRE_DASHBOARD_API_HOST_PORT"]
      when ENC["STAGING_EMAIL"]
        dashboard_api_host_port=ENV["STAGING_DASHBOARD_API_HOST_PORT"] if ENV["STAGING_DASHBOARD_API_HOST_PORT"]
      end
    end
  end
end
