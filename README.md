To run:

`nextflow run . -profile autoazure`

Should print container names to console.

You can change the VM SKU with parameters:
`nextflow run adamrtalbot -r azure_gpus -profile autoazure --azure_vm_size Standard_E16ds_v4`

It will require environment variables:
- `AZURE_WORKING_DIRECTORY`
- `AZURE_STORAGE_ACCOUNT_NAME`
- `AZURE_STORAGE_ACCOUNT_KEY`
- `AZURE_BATCH_ACCOUNT_REGION`
- `AZURE_BATCH_ACCOUNT_NAME`
- `AZURE_BATCH_ACCOUNT_KEY`