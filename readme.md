# Operations Container

A collection of tools for infrastructure provisioning, configuration. Used for a [direnv](https://direnv.net)
environment to delegate commands to docker.

### Included Tools

- [ansible](https://docs.ansible.com/ansible/latest/index.html)
- [jq](https://stedolan.github.io/jq/)
- [jsonnet](https://jsonnet.org/)
- [packer](https://www.packer.io/docs/commands/index.html)
- [terraform](https://www.terraform.io/docs/cli-index.html)

### Update Dependencies

- [docker](https://www.docker.com)
- [git](https://git-scm.com/)
- [jq](https://stedolan.github.io/jq/)
- [make](https://www.gnu.org/software/make/)

Update to the latest tools versions, fetched from their respective GitHub repostitories.

    make update
