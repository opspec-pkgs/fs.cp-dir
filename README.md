[![Build Status](https://github.com/opspec-pkgs/fs.cp-dir/workflows/build/badge.svg?branch=main)](https://github.com/opspec-pkgs/fs.cp-dir/actions?query=workflow%3Abuild+branch%3Amain)

# Problem statement

copy contents of `src` to `dst`

# Example usage

## Visualize

```shell
opctl ui github.com/opspec-pkgs/fs.cp-dir#2.0.3
```

## Run

```
opctl run github.com/opspec-pkgs/fs.cp-dir#2.0.3
```

## Compose

```yaml
op:
  ref: github.com/opspec-pkgs/fs.cp-dir#2.0.3
  inputs:
    dst:  # 👈 required; provide a value
    groupId:  # 👈 required; provide a value
    src:  # 👈 required; provide a value
    userId:  # 👈 required; provide a value
  ## uncomment to override defaults
  #   dstPath: "/"
  #   overwrite: false
  outputs:
    dst:
```

# Support

join us on
[![Slack](https://img.shields.io/badge/slack-opctl-E01563.svg)](https://join.slack.com/t/opctl/shared_invite/zt-51zodvjn-Ul_UXfkhqYLWZPQTvNPp5w)
or
[open an issue](https://github.com/opspec-pkgs/fs.cp-dir/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see
[project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/main/CONTRIBUTING.md)
