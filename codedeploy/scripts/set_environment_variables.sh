export RDS_PORT=5432
export RDS_DB_NAME="postgres"
export RDS_PASSWORD=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresPassword --with-decryption --query Parameters[0].Value)
export RDS_USERNAME=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresUsername --with-decryption --query Parameters[0].Value)
export RDS_ENDPOINT=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresEndpoint --with-decryption --query Parameters[0].Value)