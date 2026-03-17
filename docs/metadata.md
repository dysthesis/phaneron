# Metadata

A [note](./notes.md)'s metadata consists of its machine-readable attributes. The
`meta.toml` file is machine-managed; users may edit it, but should not expect
format stability. At minimum, it includes

- the notes's [identifier](./identifiers.md),
- its creation time (`ctime`),
- its last modified time (`mtime`), and
- any aliases (`aliases`).

All other top-level keys are treated as arbitrary metadata. The system reserves
the keys listed above; everything else is preserved as-is across reads and
writes.
