from flask import Flask, request
from db import stores, items
from flask_smorest import abort
import uuid

app = Flask(__name__)


# get info about the stores
@app.get('/store')
def get_stores():
    return {"stores": list(stores.values())}


# get all items
@app.get("/item")
def get_all_items():
    return {"items": list(items.values())}

# add a new store


@app.post('/store')
def create_store():
    store_data = request.get_json()
    if "name" not in store_data:
        abort(400, message="Bad request. Ensure 'name' is included in the JSON payload.")
    for store in stores.values():
        if store_data["name"] == store["name"]:
            abort(400, message="Store already exists")
    store_id = uuid.uuid4().hex
    store = {**store_data, "id": store_id}
    stores[store_id] = store
    return store, 201
    # 201 means OK and we have accepted the data

# add item to post


@app.post('/item')
def create_item():
    item_data = request.get_json()
    if ("price" not in item_data or "store_id" not in item_data or "name" not in item_data):
        abort(400, message="Bad request. Ensure 'price', 'store_id', 'name' are included in the JSON payload.")
    for item in item.values():
        if (item_data["name"] == item["name"] and item_data["store_id"] == item["store_id"]):
            abort(400, message="item already exists")
    if item_data["store_id"] not in stores:
        abort(400, message="Store not found")
    item_id = uuid.uuid4().hex
    item = {**item_data, "id": item_id}
    items[item_id] = item
    return item, 201

# get the store information


@app.get('/store/<string:store_id>')
def get_store(store_id):
    try:
        return stores[store_id]
    except KeyError:
        # abort-when we finish the application, it will document the application
        return abort(404, message="Store not found")


# get the store information
@app.get('/item/<string:item_id>')
def get_item(item_id):
    try:
        return items[item_id]
    except KeyError:
        return abort(404, message="Item not found")

@app.delete('/item/<string:item_id>')
def delete_item(item_id):
    try:
        del items[item_id]
        return {"message": "Item deleted."}
    except KeyError:
        return abort(404, message="Item not found")


if __name__ == "__main__":
    app.run(debug=True)
