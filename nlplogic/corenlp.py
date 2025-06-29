from textblob import TextBlob
import wikipedia


def search_wikipedia(name):
    print(f"Searching {name}")
    return wikipedia.search(name)


def summarize_wikipedia(name):
    return wikipedia.summary(name)


def get_text_blob(text):
    return TextBlob(text)


def get_phrases(name):
    text = summarize_wikipedia(name)
    blob = get_text_blob(text)
    phrases = blob.noun_phrases
    return phrases
