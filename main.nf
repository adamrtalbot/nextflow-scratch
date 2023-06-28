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
    """
}

workflow {
    Channel.of(
        "docker.io/nanoporetech/dorado:shac9cd8d6dd1076bf0290ef36c7531c83bd1003302",
        "docker.io/ontresearch/dorado:sha1b00def6c21f62c42ffc6726c4da9d8960c3b7ef",
    )
    | unique
    | CONTAINER
    | view
}

workflow.onComplete {
    println "$workflow.container"
}