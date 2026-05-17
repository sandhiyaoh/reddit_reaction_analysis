# Reddit Reaction Analysis

This project provides an end-to-end Machine Learning pipeline and a Chrome Extension to perform sentiment analysis on Reddit comments.

## Setup Instructions

1. **Create and Activate Conda Environment**
```bash
conda create -n reddit python=3.11 -y
conda activate reddit
```

2. **Install Requirements**
```bash
pip install -r requirements.txt
```

## DVC (Data Version Control)
The project uses DVC for pipeline tracking.
```bash
dvc init
dvc repro
dvc dag
```

## Chrome Extension Setup

1. Open Chrome and navigate to `chrome://extensions`
2. Enable "Developer mode" in the top right.
3. Click "Load unpacked" and select the `reddit-chrome-plugin-frontend` directory.
4. Navigate to any Reddit post (e.g., `https://www.reddit.com/r/.../comments/...`) and click the extension icon to view sentiment insights for the post's comments.

## Local API Server

Start the Flask backend to serve predictions to the Chrome extension:
```bash
python reddit_api.py
```
By default, the extension points to `http://localhost:5000/`.

### JSON Data Demo via API

You can test the sentiment prediction endpoint locally:
```http
POST http://localhost:5000/predict
Content-Type: application/json

{
    "comments": ["This is an awesome post!", "Very bad explanation. poor content"]
}
```
