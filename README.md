# The mono

Managing multiple repos for the same application is time consuming and difficult, in my experience. Not that it can't be done and/or done well, but just that my experience has taught me that it hasn't been done well. But does a single application really need multiple repos? One for the front-end and one for the back-end? What if you want a microservices architecture? That's the beauty of containers - you can configure a container to point to a specific folder within a repo and serve that folder's contents as one container and do the same for any number of other folders. This allows you to have the benefit of a monolith repo with the benefit of a microservices architecture.

## Purpose

To simplify the process of setting up a SPA with Lumen as the back-end, Vue.js as the front-end and all based on Docker containers.

## Understanding

We utilize the concept of domain-driven design (DDD). Nest each part of the application within its own domain specific sub-folder: lumen, vue, etc.
