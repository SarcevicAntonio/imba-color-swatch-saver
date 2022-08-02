import './grid.imba'
import './swatch.imba'
import './adder.imba'
import {setStorage, getStorage} from "./storage.imba"

global css body ff:"Atkinson Hyperlegible", "Roboto", sans-serif
	button bd:none

const STORAGE_KEY = 'color-swatch-saver-colors'

tag app
	prop colors = getStorage STORAGE_KEY, []

	def handleColorAdded e
		colors.push(e.detail)
		setStorage STORAGE_KEY, colors

	def handleColorDeleted e
		colors = colors.filter(do(i) i !== e.detail)
		setStorage STORAGE_KEY, colors

	<self>
		<header [mx:auto w:fit-content ta:center]>
			<h1> "Color Swatch Saver"
			<p> "Click the color to save the color code to your clipboard."
			<p> "Click the color while pressing Alt/Option to delete the color from the grid."
		<color-grid @colorDeleted=handleColorDeleted colors=colors>
		<color-adder @colorAdded=handleColorAdded>

imba.mount <app>