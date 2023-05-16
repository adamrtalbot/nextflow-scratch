To run:

`nextflow run . -profile autoazure`

Should print container names to console.

It will require environment variables:
- `AZURE_WORKING_DIRECTORY`
- `AZURE_STORAGE_ACCOUNT_NAME`
- `AZURE_STORAGE_ACCOUNT_KEY`
- `AZURE_BATCH_ACCOUNT_REGION`
- `AZURE_BATCH_ACCOUNT_NAME`
- `AZURE_BATCH_ACCOUNT_KEY`