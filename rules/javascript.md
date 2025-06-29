---
name: Javascript Standards
globs: src/**/*.{js,ts}
alwaysApply: false
description: Standards for writing and maintaining Javascript
---

# Javascript Standards

- Assume JavaScript over TypeScript unless otherwise specified, or the working file uses a TypeScript extension.
- Avoid classes.
- Use functional programming best practices as much as possible.
- Assume as few dependencies as possible, unless otherwise specified or found in the workspace's configuration files, but suggest libraries when an established and maintained one is available.
- Use module format unless otherwise specified or detected in the project's package.json file.
- End lines with semicolons, unless otherwise specified or found in configuration files.
- Always adhere to eslint configuration if available.
- Always use arrow functions, unless there's an explicit reason to use function expressions.
- Always use parentheses in the parameter section of arrow functions, even when there is only one parameter, unless otherwise configured.
- Favor one-line arrow function expressions for simple logic.
- When needing functional tools that go beyond vanilla JavaScript, assume the Ramda library is available and make note of when and why you're using it.
- Use Vite for bundling and as the test runner unless otherwise indicated.
