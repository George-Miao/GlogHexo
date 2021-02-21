---
title: Test coding
date: 2021-02-21 16:23:21
tags: [Test, English]
---

This is a code block:

```typescript
console.log('Hello World')

@InitComponent({ name: 'Test' })
class Test extends Component {
  name: string = 'Test'
  constructor(name?: string | undefined) {
    if (name) this.name = name
  }
  get name() {
    return `Name: ${this.name}`
  }
}
```

This is an inline code block: `code` `code`
