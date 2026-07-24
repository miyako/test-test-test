# HDI_Get process activity

A 4D v17 **HDI** (How Do I) binary database demonstrating how to get the list of running processes, converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** [Create your own process and user monitoring](https://blog.4d.com/create-your-own-process-and-user-monitoring/)

- **Original download:** [HDI_Get process activity](https://download.4d.com/Demos/4D_v16_R4/HDI_Get%20process%20activity.zip)

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-modernize-4d-project`](../../tree/miyako-modernize-4d-project) | Modernizes 4D project methods, startup flow, localization, menu actions, and theme-aware listbox/button styling, plus README reporting. | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [listbox.instructions.md](.github/instructions/listbox.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md), [readme.branches.instructions.md](.github/instructions/readme.branches.instructions.md) |

## Copilot Token Usage

Actual per-session token usage, pulled from Copilot session records.

| Session | Branch | Model(s) | Input Tokens | Output Tokens | Turns |
|---------|--------|----------|-------------:|--------------:|------:|
| 4d modernize project | `miyako-laughing-spork` | gpt-5.3-codex | 9,324,626 | 38,830 | 9 |
| **Total** | | | **9,324,626** | **38,830** | **9** |

## Screenshots
