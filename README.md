# Shell-in-a-Pod
Someone once asked on reddit how to build a training environment. This is an example of giving someone a Linux environment to play around in. You just build the container and make a deployment of the manifest in a Kubernetes cluster.

A username and password is set via environment variables.

[shellinabox](https://github.com/shellinabox/shellinabox) is a shell service delivered over HTTP, so you just have to use services to expose it and you can also setup HTTP proxies with apache, nginx, traefik, or whatever.

This repo uses [skaffold](https://skaffold.dev/) for development. You can test things out locally and develop it further via `skaffold dev`.

If you find this useful and make significant changes and want make a pull request, go for it. PR's are welcomed.

# Notes on Security
This is NOT a secure example. Some immediately obvious problems you need to overcome.

* this puts a user in your cluster and you better secure things, because people will probe. Having good [NetworkPolicies](https://kubernetes.io/docs/concepts/services-networking/network-policies/) is not optional; you do not want to be pwned or cause the company to go belly up
* setting /var/lib/shellinabox/certificate.pem will enable SSL for the container
* use a secret to expose the password environment variable