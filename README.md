# Operations Container

A collection of infrastructure management tools. Use with [direnv](https://direnv.net) to delegate commands to docker.

### Included Tools

- [ansible](https://docs.ansible.com/ansible/latest/index.html) (2.10.0)
- [asdf](https://asdf-vm.com/)
- [aws](https://github.com/aws/aws-cli)
- [jq](https://stedolan.github.io/jq/)
- [jsonnet](https://jsonnet.org/)
- [packer](https://www.packer.io/docs/commands/index.html) (1.6.1)
- [terraform](https://www.terraform.io/docs/cli-index.html) (0.13.1)

### Build Dependencies

- [j2cli](https://pypi.org/project/j2cli/)
- [jq](https://stedolan.github.io/jq/)
- [make](https://www.gnu.org/software/make/)

Update to the latest tools versions, fetched from their respective GitHub repostitories.

    make update
