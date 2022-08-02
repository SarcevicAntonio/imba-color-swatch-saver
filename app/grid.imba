tag color-grid
	prop colors
	<self>
		<section [d:grid gtc:3 max-width:40ch mx:auto g:1em]>
			for color of colors
				<color-swatch color=color>
			unless colors.length
				for _ of Array(3)
					<div [w:100% aspect-ratio:1/1 rd:lg shadow:sm]>