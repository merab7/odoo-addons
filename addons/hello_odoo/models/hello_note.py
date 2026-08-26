from odoo import fields, models


class HelloNote(models.Model):
    _name = "hello.note"
    _description = "Hello Note"
    _order = "create_date desc"

    name = fields.Char(required=True)
    body = fields.Text()
    active = fields.Boolean(default=True)
