# Repository workspace

## Layout

- Control checkout: `/Users/fabio/workspaces/homebrew-sortwise/Homebrew Sortwise`
- Feature and fix worktrees: `/Users/fabio/workspaces/homebrew-sortwise/worktrees`
- Expected remote: `git@github.com:fabioderiu/homebrew-sortwise.git`
- The neutral parent `/Users/fabio/workspaces/homebrew-sortwise` is not a Git repository.

Keep the control checkout clean on `main`, tracking `origin/main`. Tap usage is documented in [README.md](README.md). The package definitions are [`Formula/sortwise.rb`](Formula/sortwise.rb) and [`Casks/sortwise.rb`](Casks/sortwise.rb); product and technical context belongs to the separate [Sortwise repository](https://github.com/fabioderiu/sortwise).

## Feature and fix workflow

1. Open the **Homebrew Sortwise** project in Nimbalyst.
2. In the clean control checkout, fetch and fast-forward `main` from `origin/main`.
3. Create one dedicated branch and linked worktree under `/Users/fabio/workspaces/homebrew-sortwise/worktrees`.
4. Bind one Nimbalyst session to that worktree. Use one branch, one worktree, and one session per feature or fix.
5. Never implement in the control checkout, and never treat changing a terminal's current directory as transferring a session.
6. Before editing or committing, verify `pwd`, the Git top level, Git common directory, branch, origin URL, status, and the task or issue.
7. Read [AGENTS.md](AGENTS.md), this file, the relevant project documents, and the task-specific brief.
8. Validate with `ruby -c Formula/sortwise.rb`, `ruby -c Casks/sortwise.rb`, and safe Homebrew audits when available. Commit, push, and open or update the PR from that exact worktree.
9. Remove the worktree only after its work is merged or otherwise safely retained.

This tap does not own npm or Python environments. Do not relocate the Homebrew cache, install packages, or publish formulas during routine validation. Machine-level npm and pip caches, when used by related repositories, remain outside this checkout.

Sortwise release tags may automatically update this tap. Formula/cask publication and release automation affect external users, so do not create tags, releases, packages, or publishing changes unless the task explicitly requires them.

