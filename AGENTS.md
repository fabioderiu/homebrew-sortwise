# Agent instructions

Read [README.md](README.md) and [REPOSITORIES.md](REPOSITORIES.md) before changing this tap.

## Repository rules

- [`Formula/sortwise.rb`](Formula/sortwise.rb) and [`Casks/sortwise.rb`](Casks/sortwise.rb) are the maintained package definitions.
- The related product source and operational documentation live in the separate [Sortwise repository](https://github.com/fabioderiu/sortwise).
- Validate Ruby syntax and run safe Homebrew audits when available. Do not install, publish, or update a formula or cask merely to validate documentation.
- Sortwise tags drive releases and can automatically update this tap. Treat tag, release, package, and tap updates as external writes.
- Never implement directly in the clean control checkout. Use the worktree workflow in [REPOSITORIES.md](REPOSITORIES.md).

