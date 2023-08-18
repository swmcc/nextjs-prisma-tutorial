# Fullstack Authentication Example with Next.js and NextAuth.js

## Description

Hello, I've decided to start this repository as a learning exercise to revisit
the basics of [Next.js](https://nextjs.org/) and [Prisma](https://www.prisma.io/).

I've been working on another project where I encountered some issues, and
sometimes it's helpful to take a step back and review the fundamentals to
ensure I haven't missed any critical concepts. I believe that periodically
going back to basics, even on concepts that might seem mundane, can provide a
fresh perspective and offer solutions to ongoing problems.

This repository will follow an [online
tutorial](https://vercel.com/guides/nextjs-prisma-postgres) on Next.js and
Prisma, where I will be working through the steps and documenting my progress.
I'll also include some reflections and observations, and share any insights or
tips I find helpful along the way.

As developers, we're constantly growing and learning, and sometimes we need to
revisit the basics to reinforce our knowledge. This process can seem like
taking a step back, but in reality, it often allows us to take two steps
forward. Some examples where **"going back to school"** has helped people
include:

- *Refactoring Code:* Sometimes, revisiting basic principles of clean coding or
  design patterns can help streamline and improve the efficiency of a codebase.

- *Debugging:* Understanding the fundamental workings of a system can often
  give you the insight you need to find and fix a bug. 

- *Learning New Features:* Sometimes, going back to basics can help you better
  understand new features or updates in a technology. 

I believe, as we continue to learn and grow as developers, it's important to
realise that there is always something new to learn, no matter how experienced
we are. As Albert Einstein once said, *"Once you stop learning, you start
dying."* 

So, let's continue to learn and grow together. Every day is a school day.

## Development

Run the following commands in order to get a working app.

### Installation

```bash
  npm install
  npm i -g vercel@latest
```

### Sync Environment Variables

```bash
  make local.sync.env 
```

If you are using your own postgres db for local development then amend the
`.env.local.empty` accordingly. Remember to rename it to `.env.local`  

### Export environment vars

I needed to do this to get prisma working properly.

```bash
  make local.env.load
```

### Push database schema

```bash
  make database.push 
```

### Sync db.schema

```bash
  make database.sync
```

### Add test data 

Add a user and link it to a Post using the GUI provided.

```bash
  make database.studio
```

### Run local server

```bash
  make local.run
```  

## Makefile

For a full list of commands see the
[Makefile](https://github.com/swmcc/nextjs-prisma-tutorial/blob/main/Makefile).

I use my own Makefile in projects for several reasons. First, it provides a
consistent and repeatable way to build and manage my projects, ensuring that I
can recreate the same environment and outcomes across different systems.

Second, it automates the build process, reducing manual steps and the potential
for errors. 

Finally, by using my own Makefile, I can tailor it to my specific project's
needs, making it more efficient and customized than using a generic solution. 

It not only enhances productivity but also helps in sharing the project with
others, as they can use the Makefile to quickly set up and understand the
project's structure and build process.

## Notes

I encountered an issue while trying to install `next-auth@4` with the Next.js
version (12) that was specified in the original tutorial. It seems that Next.js
12 is no longer compatible with next-auth@4. To address this, I decided to
upgrade to the latest version of Next.js. You can view the changes made in the
upgrade in this pull request:

https://github.com/swmcc/nextjs-prisma-tutorial/pull/1. 

However, I noticed that the deployment is breaking. I suspect this might be
unrelated to the upgrade, so I plan to continue working through the tutorial
and will investigate this deployment issue once I've completed the tutorial.
For now, everything is working as expected in my local environment.
