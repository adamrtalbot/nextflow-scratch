process CONTAINER {
    cpus 1
    memory 1.GB
    
    container { "$container" }

    input: 
        val container

    output: 
        stdout

    """
    echo $container
    # nvidia-smi
    """
}

workflow {
    Channel.of(
        "docker.io/nanoporetech/dorado:shac9cd8d6dd1076bf0290ef36c7531c83bd1003302",
        "docker.io/nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04",
        "docker.io/nvidia/cuda:12.1.0-runtime-ubuntu18.04",
        "nvcr.io/nvidia/clara/clara-parabricks:4.0.1-1"
    )
    | unique
    | CONTAINER
    | view
}