---
title: Configure the content cache
---

Configure the content cache so that visitors get pages faster and your servers handle fewer requests. Complete the following steps before you change the timeout.

## Set the cache timeout

Set the timeout to control how long the cache keeps a page. The following settings control the cache:

- **Timeout** – Enter the number of seconds that the cache keeps a page.
- **Size** – Enter the maximum number of pages in the cache.

To set the timeout, complete the following steps:

1. Go to **Settings** > **Cache**.
2. Enter *300* in the **Timeout** field.
3. Click **Save**.

The following command clears the cache:

```shell
npm run cache:clear
```
