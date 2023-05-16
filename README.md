To run:

`nextflow run adamrtalbot/nextflow-scratch -r azure_gpus -profile autoazure -w az://work/`

Should print container names to console.

You can change the VM SKU with parameters:

`nextflow run adamrtalbot/nextflow-scratch -r azure_gpus -profile autoazure -w az://work/ --azure_vm_size Standard_E16ds_v4`

It will require environment variables:
- `AZURE_STORAGE_ACCOUNT_NAME`
- `AZURE_STORAGE_ACCOUNT_KEY`
- `AZURE_BATCH_ACCOUNT_REGION`
- `AZURE_BATCH_ACCOUNT_NAME`
- `AZURE_BATCH_ACCOUNT_KEY`

In addition you will need to set the Nextflow working directory using `-w az://containername` or the environment variable `NXF_WORK`.