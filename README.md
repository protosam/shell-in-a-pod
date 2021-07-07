# Shell-in-a-Pod
Someone once asked on reddit how to build a training environment. This is an example of giving someone a Linux environment to play around in. You just build the container and make a deployment of the manifest in a Kubernetes cluster.

A username and password is set via environment variables.

[shellinabox](https://github.com/shellinabox/shellinabox) is a shell service delivered over HTTP, so you just have to use services to expose it and you can also setup HTTP proxies with apache, nginx, traefik, or whatever.

A note on security: reference the password from a secret, this example is not "secure" persay. It's just an example.

Also setting /var/lib/shellinabox/certificate.pem will enable SSL for the container.

This repo uses [skaffold](https://skaffold.dev/) for development.