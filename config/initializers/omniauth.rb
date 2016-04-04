Rails.application.config.middleware.use OmniAuth::Builder do
	provider :github, 'aaf3d66beb54ee754021', '5c0511c3e4edfa2550f255bf1261498f7db6ed3e', scope: "user,repo,gist"
end