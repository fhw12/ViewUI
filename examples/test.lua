local app = {}

-- test -> row and column
app.view = {
	{'row', size=0.5, bc={0.5, 0.5, 0.5}, content={
		{'column', bc={0, 0, 0, 0.5}, size=0.5, content={
			{'row', bc={0.8, 0.5, 0.5}, size=0.1, content={
				{'circle', bc={0.85, 0.55, 0.55}, size=0}
			}},
			{'row', bc={0.7, 0.6, 0.6}, size=0.2},
			{'row', bc={0.6, 0.7, 0.7}, size=0.3},
			{'row', bc={0.5, 0.8, 0.8}, size=0.4},
		}},
	}},
	{'row', size=0.5, bc={0.5, 0.5, 0.5}, content={
		{'circle', bc={0.55, 0.55, 0.55}, size=0}
	}},
}

return app