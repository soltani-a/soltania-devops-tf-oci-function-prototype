import io
import json

def handler(ctx, data: io.BytesIO = None):
    response = {
        "message": "Hello, World!"
    }
    return json.dumps(response)
