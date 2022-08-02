export def setStorage key, value
	const json = JSON.stringify(value)
	localStorage.setItem(key, json)

export def getStorage key, fallback
	const stored = localStorage.getItem(key)
	const object = JSON.parse(stored)
	unless object
		return fallback
	return object
