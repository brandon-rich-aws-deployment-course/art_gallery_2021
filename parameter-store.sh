# Put parameters in parameter store.  DO NOT COMMIT TO VERSION CONTROL WITH REAL VALUES
aws ssm put-parameter --name CodeDeployPostgresUsername --value "postgres" \
 --type SecureString --region us-east-1
 aws ssm put-parameter --name CodeDeployPostgresPassword --value "xyz" \
 --type SecureString --region us-east-1
 aws ssm put-parameter --name CodeDeployPostgresEndpoint --value "database-1.chbngphfil33.us-east-1.rds.amazonaws.com" \
 --type SecureString --region us-east-1