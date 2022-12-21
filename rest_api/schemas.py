from marshmallow import Schema, fields


class ItemSchema(Schema):

    # dump only true means we are goind to use this to return data, if false, it was to requrest data
    id = fields.Str(dump_only=True)
    name = fields.Str(required=True)  # we recive name in json payload
    price = fields.Float(required=True)
    store_id = fields.Str(required=True)


class ItemUpdateSchema(Schema):
    name = fields.Str()  # we recive name in json payload
    price = fields.Float()


class StoreSchema(Schema):
    id = fields.Str(dump_only=True)
    name = fields.Str(required=True)
