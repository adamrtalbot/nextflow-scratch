# Check Azure GPUs are container enabled

A little workflow to test if Docker containers running in Azure Batch can access the GPU attached to the machine.

## Run

To run on Azure:

`nextflow run adamrtalbot/nextflow-scratch -r azure_gpus -profile autoazure -w az://work/`

Should print container names to console.

You can change the VM SKU with parameters:

`nextflow run adamrtalbot/nextflow-scratch -r azure_gpus -profile autoazure -w az://work/ --azure_vm_size Standard_E16ds_v4`

You may want to add `-latest` to include the latest changes:

`nextflow run adamrtalbot/nextflow-scratch -r azure_gpus -latest -profile autoazure -w az://work/`

## Configure

It will require environment variables:
- `AZURE_STORAGE_ACCOUNT_NAME`
- `AZURE_STORAGE_ACCOUNT_KEY`
- `AZURE_BATCH_ACCOUNT_REGION`
- `AZURE_BATCH_ACCOUNT_NAME`
- `AZURE_BATCH_ACCOUNT_KEY`

In addition you will need to set the Nextflow working directory using `-w az://containername` or the environment variable `NXF_WORK`. Make sure this is on Azure Blob storage if running on Azure Batch. See [documentation](https://www.nextflow.io/docs/latest/azure.html) for details.

## Development

For debugging or testing you can run locally by removing `-profile autoazure`:

`nextflow run adamrtalbot/nextflow-scratch -r azure_gpus`

Alternatively, you can run the local version by cloning the repo and running Nextflow in the local folder:

`nextflow run . -w work`