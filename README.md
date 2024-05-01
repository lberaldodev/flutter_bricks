# Flutter Bricks for Mason

This repository contains a collection of Flutter bricks that can be used with Mason, a tool for building beautiful, customizable UIs in Flutter.

## What is Mason?

[Mason](https://pub.dev/packages/mason) is a powerful Flutter package that allows you to create reusable UI components called bricks. These bricks can be composed and customized to build complex UI layouts efficiently.

## Bricks Included

- **Brick 1:** New Feature (new_feature).
- ...

## Installation

To use these Flutter bricks in your project, follow these steps:

1. Install mason CLI (https://docs.brickhub.dev/installing):
2. Init mason CLI in the repository (https://docs.brickhub.dev/mason-init)
3. Add to mason yaml the reference from this package.

```yaml
    bricks:
        new_feature: 
            git:
                url: https://github.com/lberaldodev/flutter_bricks.git
                path: new_feature
```
