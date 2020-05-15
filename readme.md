# Operations Container

A collection of infrastructure management tools. Use with [direnv](https://direnv.net) to delegate commands to docker.

### Included Tools

- [ansible](https://docs.ansible.com/ansible/latest/index.html) (2.9.9)
- [jq](https://stedolan.github.io/jq/)
- [jsonnet](https://jsonnet.org/)
- [packer](https://www.packer.io/docs/commands/index.html) (1.5.6)
- [terraform](https://www.terraform.io/docs/cli-index.html) (0.12.25)

### Build Dependencies

- [j2cli](https://pypi.org/project/j2cli/)
- [jq](https://stedolan.github.io/jq/)
- [make](https://www.gnu.org/software/make/)

Update to the latest tools versions, fetched from their respective GitHub repostitories.

    make update
