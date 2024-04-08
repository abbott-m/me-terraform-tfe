deploy: 
	doppler run -- terraform plan -var "github_app_installation_id=$(doppler secrets get GITHUB_APP_INSTALLATION_ID --plain)" --out tf.out && doppler run -- terraform apply -auto-approve tf.out

plan:
	doppler run -- terraform plan
