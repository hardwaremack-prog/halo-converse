HALO CONVERSE  -  offline voice chat for your AMD Ryzen AI Max+ 395
=====================================================================

Talk to a local AI through your headset. Everything (listening, thinking,
speaking) runs on this PC. After setup, unplug the internet and it still works.

  Ears   : Whisper (small.en) turns your voice into text
  Brain  : Ollama runs the AI model (default gemma3:27b, plus llama3.2:3b for speed)
  Voice  : Piper speaks the reply (4 voices included)


SETUP (once, needs internet)
----------------------------
1. Unzip this folder somewhere permanent, e.g.  C:\Apps\Halo Converse
2. Double-click  "Install Halo Converse.bat"
   - installs Python 3.12 and Ollama if you don't have them
   - downloads the voices, speech recognizer and AI models (~20 GB, mostly the model)
   - puts a "Halo Converse" shortcut on your desktop
3. Done. You can go offline now.


USING IT
--------
Double-click "Halo Converse" on the desktop. It opens in its own window.
Click "Start talking" and allow the microphone.

  Push to talk : hold SPACE (or hold the button), talk, let go.
  Hands-free   : just talk. It answers when you pause.
                 Talking over a reply interrupts it.
  Esc          : stop the current reply
  Typing       : the text box works too

Flip between the two with the toggle at the bottom left.

Gear menu:
  - pick your headset mic and headphones
  - choose the voice and speaking speed
  - set Hands-free sensitivity (watch the little bar under the halo:
    put the line just above where it sits when you're quiet)
  - change Halo Converse's personality

The model picker at the top shows every model installed in Ollama.
Want a different one?  Open a terminal:  ollama pull qwen3:30b
then pick it from the list.


USING IT FROM OTHER DEVICES ON YOUR NETWORK
-------------------------------------------
Halo Converse also works from phones, tablets and other computers on your
home Wi-Fi. Leave it running on the AMD 395, then on the other device open:

    https://<this PC's address>:8443

The exact address is in the gear menu under "Use from other devices"
(and in the black window when it starts), e.g. https://192.168.1.50:8443

  - First visit: the browser warns about the certificate. That's expected,
    it's Halo's own private certificate. Choose Advanced -> Continue
    (iPhone: Show Details -> visit this website). Then allow the microphone.
  - Each device gets its own conversation, voice and talk-mode settings.
  - Only this PC can change the personality.
  - Works on your home network only, never the internet.

Can't connect?
  - Run "Allow on my network.bat" (opens port 8443 in Windows Firewall).
  - In Windows Settings > Network, your Wi-Fi/Ethernet should be set to
    "Private network", not "Public".
  - To turn sharing off, set "share_on_network": false in config.json.


GETTING UPDATES
---------------
When the PC is online, Halo Converse checks for a new version on start and
shows an "Update available" button at the top. Any of these updates it:
  1. Gear menu -> Updates -> "Update now"
  2. The "Update Halo Converse" icon on the desktop
  3. Double-click "Update Halo Converse.bat" in this folder
Models, voices, settings, chats and config.json changes are kept.
If it's open, it restarts by itself and the window reloads.


USING LM STUDIO INSTEAD OF OLLAMA
---------------------------------
Open config.json in Notepad and change
    "llm_backend": "ollama"   ->   "llm_backend": "openai"
Start LM Studio's local server (port 1234) with a model loaded, then
launch Halo Converse.


IF SOMETHING ISN'T WORKING
--------------------------
The three dots at the top (Brain / Ears / Voice) go green when ready.
  Brain red  -> Ollama isn't running. Start "Ollama" from the Start menu.
  Ears red   -> run the installer again to re-download the speech recognizer.
  Voice amber-> no Piper voice found; it falls back to the Windows voice.
                Run the installer again to fetch the voices.
Replies slow? Pick llama3.2:3b in the model picker - it's much faster.

The black window that opens with the app shows what's happening.
Close it to quit Halo Converse.
