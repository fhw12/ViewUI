local app = {}

app.view = {
	{'row', size=1, bc={0.16,0.21,0.22}, content={
		{'row', size=0.4, bc={0.16,0.21,0.22}, content={
			{'text', fg={0.98,0.99,1}, text="637"}
		}},

		{'row', size=0.6, bc={0.16,0.21,0.22}, content={
			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0.43, 0.5, 0.49}, padding=3, content={
						{'text', fg={0.98,0.99,1}, text="AC"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0.43, 0.5, 0.49}, padding=3, content={
						{'text', fg={0.98,0.99,1}, text="<"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={1,1,1}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="%"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={1,1,1}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="/"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, padding=3, content={
					{'circle', bc={0,0,0,0}, content={
						{'text', fg={1,1,1}, text="7"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="8"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="9"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={1,1,1}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="X"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, padding=3, content={
					{'circle', bc={0,0,0,0}, content={
						{'text', fg={1,1,1}, text="4"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="5"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="6"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={1,1,1}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="-"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="1"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="2"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="3"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={1,1,1}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="+"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="+ / -"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="0"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={0,0,0,0}, padding=3, content={
						{'text', fg={1,1,1}, text="."}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, content={
					{'circle', bc={1,1,1}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="="}
					}}
				}},
			}},
		}},
	}},
}

return app