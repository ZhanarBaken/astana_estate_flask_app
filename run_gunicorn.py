import os
from app import flask_app

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    flask_app.run(host='0.0.0.0', port=port)