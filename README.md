
### Set Azure Creds

Powershell:

```
$Env:ARM_CLIENT_ID=
$Env:ARM_CLIENT_SECRET=
$Env:ARM_ENVIRONMENT=
$Env:ARM_SUBSCRIPTION_ID=
```

Bash:
```
export ARM_CLIENT_ID=
export ARM_CLIENT_SECRET=
export ARM_ENVIRONMENT=
export ARM_SUBSCRIPTION_ID=
```

### Set AWS Creds

Powershell:

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=
```

BASH:

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=
```



terraform plan -var-file="variables.tfvars"
