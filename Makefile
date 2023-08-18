CURRENT_BRANCH := `git branch --show-current`

branch:
	echo $(CURRENT_BRANCH)

local.env.sync:
	vercel env pull .env.local

local.run:
	npm run dev

local.env.load:
	export $(grep -v '^#' .env.local | xargs)


database.push:
	npx prism db push

database.studio:
	npx prisma studio

database.cli:
	psql $(POSTGRES_URL)

database.sync:
	npx prisma generate
