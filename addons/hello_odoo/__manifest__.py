{
    "name": "Hello Odoo",
    "version": "19.0.1.1.0",
    "summary": "Minimal example addon used to prove the EKS delivery pipeline",
    "author": "merab7",
    "license": "LGPL-3",
    "category": "Tools",
    "depends": ["base"],
    "data": [
        "security/ir.model.access.csv",
        "views/hello_note_views.xml",
    ],
    "installable": True,
    "application": True,
}
