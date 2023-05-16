process HELLO {
    container "docker.io/library/ubuntu:xenial-20210804"

    output: stdout

    """
    echo "Hello, world!"
    """
}

workflow {
    hello = HELLO()
    hello.view()
}