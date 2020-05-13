# Operations Container

A collection of tools for infrastructure provisioning, configuration. Used with [direnv](https://direnv.net) to
delegate commands to docker.

### Included Container Tools

- [ansible](https://docs.ansible.com/ansible/latest/index.html)
- [jq](https://stedolan.github.io/jq/)
- [jsonnet](https://jsonnet.org/)
- [packer](https://www.packer.io/docs/commands/index.html)
- [terraform](https://www.terraform.io/docs/cli-index.html)

### Update Build Dependencies

- [j2cli](https://pypi.org/project/j2cli/)
- [jq](https://stedolan.github.io/jq/)
- [make](https://www.gnu.org/software/make/)

Update to the latest tools versions, fetched from their respective GitHub repostitories.

    make update
