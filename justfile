deploy: 
	doppler run -- terraform plan -out tf.out && doppler run -- terraform apply -auto-approve tf.out
