tag color-adder

	css button
			p:1em
			w:100%
			rd:sm
			fw:600
			c:white
			bgc:#5E35B1 @hover:#311B92
			shadow@hover:lg
			cursor:pointer
			tween:all 0.2s ease

	prop code = "grey"

	def handleSubmit
		emit("colorAdded", code)
		code = "grey"

	<self [m:auto w:fit-content mt:2em]>
		<section [bd:1px solid black rd:sm p:2em]>
			<form @submit.prevent=handleSubmit [d:vflex jc:center ai:center m:0 g:1em]>
				<h2 [mt:0]> "+ Add new color"
				<div [d:hflex g:1em]>
					<fieldset [bd: none d:vflex p:0 jc:space-between]>
						<label for="code"> "Color Code"
						<input id="color-picker" type="color" bind=code [all:unset visibility:hidden]>
						<input id="code" bind=code>
					<label for="color-picker" [cursor:pointer bgc:{code} size:3em rd:sm]>
				<button
					type="submit"
				> "Save Color"