local app = {}

function app.button_click(widget_click)
	local res = getWidgetbyID(app.view, 'result')
	
	if res then
		if widget_click.text == "AC" then
			res.text = '0'
		elseif widget_click.text == "<" then
			res.text = res.text:sub(1, #res.text-1)
		elseif widget_click.text == "%" then
			local f = loadstring("return ("..res.text..") / 100")
			
			if f then
				local result = f()

				if result then
					res.text = '' .. result
					return 0
				end
			end

			res.text = 'Error'
		elseif widget_click.text == "=" then
			local f = loadstring("return "..res.text)
			
			if f then
				local result = f()

				if result then
					res.text = '' .. result
					return 0
				end
			end

			res.text = 'Error'
		elseif widget_click.text == "+-" then
			if res.text:sub(1, 1) == "-" then
				res.text = res.text:sub(2, #res.text)
			else
				res.text = '-' .. res.text:sub(1, #res.text)
			end
		else
			if res.text == "0" then
				res.text = widget_click.text
			else
				res.text = res.text .. widget_click.text
			end
		end
	end
end

app.view = {
	{'row', size=1, bc={0.16,0.21,0.22}, content={
		{'row', size=0.4, bc={0.16,0.21,0.22}, content={
			{'text', fg={0.98,0.99,1}, id='result', text="0", content={}}
		}},

		{'row', size=0.6, bc={0.16,0.21,0.22}, content={
			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='AC', content={
					{'circle', bc={0.43, 0.5, 0.49}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={0.98,0.99,1}, text="AC"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='<', content={
					{'circle', bc={0.43, 0.5, 0.49}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={0.98,0.99,1}, text="<"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='%', content={
					{'circle', bc={1,1,1}, padding=3, bc_hover={1,1,1,0.2}, content={
						{'text', fg={0,0.6,0.53}, text="%"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='/', content={
					{'circle', bc={1,1,1}, padding=3, bc_hover={1,1,1,0.2}, content={
						{'text', fg={0,0.6,0.53}, text="/"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='7', content={
					{'circle', bc={0,0,0,0}, padding=3, bc_hover={1,1,1,0.2}, content={
						{'text', fg={1,1,1}, text="7"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='8', content={
					{'circle', bc={0,0,0,0}, padding=3, bc_hover={1,1,1,0.2}, content={
						{'text', fg={1,1,1}, text="8"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='9', content={
					{'circle', bc={0,0,0,0}, padding=3, bc_hover={1,1,1,0.2}, content={
						{'text', fg={1,1,1}, text="9"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='*', content={
					{'circle', bc={1,1,1}, padding=3, bc_hover={1,1,1,0.2}, content={
						{'text', fg={0,0.6,0.53}, text="X"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='4', padding=3, content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, content={
						{'text', fg={1,1,1}, text="4"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='5', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="5"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='6', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="6"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='-', content={
					{'circle', bc={1,1,1}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="-"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='1', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="1"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='2', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="2"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='3', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="3"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='+', content={
					{'circle', bc={1,1,1}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="+"}
					}}
				}},
			}},

			{'row', size=0.2, bc={0,0,0,0}, content={
				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='+-', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="+ / -"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='0', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="0"}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='.', content={
					{'circle', bc={0,0,0,0}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={1,1,1}, text="."}
					}}
				}},

				{'column', size=1/4, bc={0,0,0,0}, click=app.button_click, text='=', content={
					{'circle', bc={1,1,1}, bc_hover={1,1,1,0.2}, padding=3, content={
						{'text', fg={0,0.6,0.53}, text="="}
					}}
				}},
			}},
		}},
	}},
}

return app