from flask import request
from flask_smorest import abort, Blueprint
from db import stores
from flask.views import MethodView
import uuid

from schemas import StoreSchema

blp = Blueprint("Stores", __name__, description="Operation on stores")


@blp.route("/store/<string:store_id>")
class Store(MethodView):
    # get the information about the store
    def get(self, store_id):
        try:
            return stores[store_id]
        except KeyError:
            # abort-when we finish the application, it will document the application
            abort(404, message="Store not found")

    # delete the store
    def delete(self, store_id):
        try:
            del stores[store_id]
            return {"message": "Store deleted."}
        except KeyError:
            abort(404, message="Store not found")


@blp.route("/store")
class StoreList(MethodView):
    # get list of all stores
    def get(self):
        return {"stores": list(stores.values())}

    # create a store
    @blp.arguments(StoreSchema)
    def post(self, store_data):
        for store in stores.values():
            if store_data["name"] == store["name"]:
                abort(400, message="Store already exists")
        store_id = uuid.uuid4().hex
        store = {**store_data, "id": store_id}
        stores[store_id] = store
        return store, 201
