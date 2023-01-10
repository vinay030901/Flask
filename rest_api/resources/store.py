from flask import request
from flask_smorest import abort, Blueprint
from flask.views import MethodView
from db import db
from models import StoreModel
from sqlalchemy.exc import SQLAlchemyError, IntegrityError
import uuid

from schemas import StoreSchema

blp = Blueprint("Stores", __name__, description="Operation on stores")


@blp.route("/store/<string:store_id>")
class Store(MethodView):
    # get the information about the store
    @blp.response(200, StoreSchema)
    def get(self, store_id):
        store = StoreModel.query.get_or_404(store_id)
        return store

    # delete the store
    def delete(self, store_id):
        store = StoreModel.query.get_or_404(store_id)
        db.session.delete(store)
        db.session.commit()
        return {"message": "Store deleted successfully"}


@blp.route("/store")
class StoreList(MethodView):
    # get list of all stores
    @blp.response(200, StoreSchema(many=True))
    def get(self):
        return StoreModel.query.all()

    # create a store
    @blp.arguments(StoreSchema)
    @blp.response(201, StoreSchema)
    def post(self, store_data):
        store = StoreModel(**store_data)
        try:
            db.session.add(store)
            db.session.commit()
        except IntegrityError:
            abort(400, "A store with the same name already exists")
        except SQLAlchemyError:
            abort(404, message="An error has occurred while inserting an item.")
        return store
