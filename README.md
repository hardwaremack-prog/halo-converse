# Halo Converse

Offline voice chat for an AMD Ryzen AI Max+ 395 PC (Windows). Talk through a headset; a local AI listens, thinks and answers out loud. Nothing leaves the computer.

![Halo Converse](screenshot.png)

- **Ears:** Whisper (`small.en`, via faster-whisper)
- **Brain:** Ollama — `gemma3:27b` by default, `llama3.2:3b` for speed (or LM Studio)
- **Voice:** Piper (Lessac, Ryan, Cori, Alan)
- **Push to talk / Hands-free** toggle, talk-over-to-interrupt, headset picker, editable personality

## Install (Windows)
1. Download this repo (Code → Download ZIP) and unzip somewhere permanent.
2. Double-click **Install Halo Converse.bat** (needs internet once; installs Python 3.12 and Ollama if missing, downloads voices and models).
3. Use the **Halo Converse** shortcut on your desktop.

## Use
- Hold **Space** (or the button) to talk, or switch to **Hands-free** and just talk.
- **Esc** stops a reply. The gear menu sets mic, voice, speed and sensitivity.

To use LM Studio instead of Ollama, set `"llm_backend": "openai"` in `config.json`.

See `README.txt` for troubleshooting.
