import gtts

import playsound2

import PREFS

class Assistant:

	def __init__(self):

		super(Assistant, self).__init__()

		default_prefs = {"lang": "en"}
		self.prefs = PREFS.PREFS(default_prefs)

		self.sing()


	def talk(self, text, save=False, lang=None, filename="temp", extension="mp3"):

		lang = self.prefs.file["lang"]

		sound = gtts.gTTS(text, lang=lang)

		sound.save(f'{filename}.{extension}')

		playsound2.playsound(f"{filename}.{extension}")

		if not save: os.remove(f"{filename}.{extension}")

	def sing(self):

		self.talk("the text here")

def main():

	assistant = Assistant()

if __name__ == "__main__":
	
	main()