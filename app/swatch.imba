import { copyTextToClipboard } from "./clipboard.js"

tag color-swatch
	prop color = "red"

	def handleClick e
		unless e.altKey
			copyTextToClipboard(color)
			window.alert("Copied {color} to clipboard!");
		else
			emit("colorDeleted", color)

	css
		button
			cursor:pointer
			w:100%
			aspect-ratio:1/1
			rd:lg
			tween:all 0.2s ease
			shadow:sm @hover:lg


	<self>
		<button
			[bgc:{color}]
			@click=handleClick
		>