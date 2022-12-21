from flask import request
from flask_smorest import abort, Blueprint
from flask.views import MethodView
import uuid

from schemas import ItemSchema, ItemUpdateSchema

blp = Blueprint("Items", __name__, description="Operation on items")


@blp.route("/item/<string:item_id>")
class Item(MethodView):
    # get the information about the item
    def get(self, item_id):
        try:
            return items[item_id]
        except KeyError:
            return abort(404, message="Item not found")

    # delete the item
    def delete(self, item_id):
        try:
            del items[item_id]
            return {"message": "Item deleted."}
        except KeyError:
            return abort(404, message="Item not found")

    # update item
    @blp.arguments(ItemUpdateSchema)
    def put(self, item_data, item_id):
        try:
            item = items[item_id]
            item |= item_data
            return item
        except KeyError:
            abort(404, message="item not found")


@blp.route("/item")
class ItemList(MethodView):
    # get all items
    def get(self):
        return {"items": list(items.values())}

    # create an item
    @blp.arguments(ItemSchema)
    def post(self, item_data):
        for item in items.values():
            if (item_data["name"] == item["name"] and item_data["store_id"] == item["store_id"]):
                abort(400, message="item already exists")
        item_id = uuid.uuid4().hex
        item = {**item_data, "id": item_id}
        items[item_id] = item
        return item, 201
