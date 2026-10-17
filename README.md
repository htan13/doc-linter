# doc-linter

The single home of Optimizely's documentation style rules. This repository holds the Optimizely documentation style guide and the Vale rules that enforce it. Every Optimizely documentation repository installs the rules from here, so a rule change lands in one place and reaches every repository on its next `vale sync`.

## What is in this repository

- **[STYLE_GUIDE.md](STYLE_GUIDE.md)** – The Optimizely documentation style guide, organized by topic, with the Vale rule and level for each rule.
- **[RULES.md](RULES.md)** – The rule index: every Vale rule, its source line, its level, which repositories turn it on, and its finding count on the documentation corpus.
- **`Optimizely/`** – The Vale package. `Optimizely/.vale.ini` turns on the styles, and `Optimizely/styles/` holds them:
  - `StyleGuide/` – Rules taken from the stated style guide (`/doc-style-guide`, `/doc-rn-review`, and repository instruction files). Each rule file opens with its rung and source line, and carries `tests:` cases.
  - `Observed/` – Collection-specific conventions that Promptless observed in a corpus. They are suggestions, off by default, and each repository turns on its own.
  - `Voices/`, `Direct/`, `Moose/`, `House/`, and `Std/` – The Promptless baseline styles, vendored with their `LICENSE` and `NOTICE` files. `Std` is a rule library for inheritance and stays out of `BasedOnStyles`.
  - `config/vocabularies/Optimizely/` – Product names and technical terms that every rule accepts.
- **`templates/`** – The `.vale.ini` files that documentation repositories use, an optional CI workflow, and a `.gitignore` entry.
- **`tests/`** – The test configuration and `run.sh`, which the CI workflows run.

## Use the rules in a documentation repository

Each documentation repository needs a short `.vale.ini` that installs the package. The rules themselves stay here.

1. Copy `templates/docs.vale.ini`, or `templates/release-notes.vale.ini` for a release-notes repository, to the repository root as `.vale.ini`.
2. Add `.vale/` to the repository's `.gitignore`.
3. Run `vale sync` to download the package, then run `vale docs`.

To run Vale on pull requests, copy `templates/vale.yml` to `.github/workflows/vale.yml`. The workflow reports alerts on changed lines and does not fail the build.

A repository adjusts the package in its own `.vale.ini`, which takes precedence over `Optimizely/.vale.ini`. For example, `episerver/cms-13-docs` turns on `Observed.ProseBranding`, and each release-notes repository turns on the `ReleaseNote*` rules.

## Change a rule

1. Change the rule in `/doc-style-guide` or `/doc-rn-review` in `patricklamopti/claude-skills`, which stays the source of truth for the rules.
2. Update the rule file in `Optimizely/styles/StyleGuide/`, including its `tests:` cases, and update `STYLE_GUIDE.md` and `RULES.md`.
3. Run `tests/run.sh`. It runs every rule's test cases, installs the package the way a documentation repository does, and lints a conforming page.
4. Open a pull request. The **Test rules** workflow runs the same checks.

Promptless never promotes an `Observed` rule to `StyleGuide`. To make an observed convention a stated rule, add it to `/doc-style-guide`, then move the rule file and raise its level.

## Release the package

The **Release package** workflow runs on every merge to `main`. It runs the tests, builds `Optimizely.zip` with a top-level `Optimizely/` directory, and attaches it to a release tagged `vYYYY.MM.DD-RUN`. Documentation repositories install `releases/latest/download/Optimizely.zip`, so they pick up the latest release on their next `vale sync`. To pin a repository to one release, replace `latest/download` with `download/TAG` in its `.vale.ini`.

The workflow grants itself the `contents: write` permission it needs to create releases, so the repository's Actions settings need no change. The merge that adds this workflow to `main` publishes the first release. If the tests fail, the workflow publishes no release, and `releases/latest` keeps pointing at the previous one. To rebuild the package without a new merge, run the **Release package** workflow from the **Actions** tab.

## Requirements

The package uses rule inheritance, the `Std` library, and `script` rules, so it needs Vale 3.20.0 or later. The workflows pin Vale 3.23.0.

The style guide's own examples trigger the rules they illustrate, so `STYLE_GUIDE.md` is not part of the lint run.
