FROM odoo:19

USER root

# System deps some addons need. Trim to what you actually use.
RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-dev build-essential libxml2-dev libxslt1-dev libsasl2-dev libldap2-dev \
    && rm -rf /var/lib/apt/lists/*

# Extra Python requirements, if your addons declare any.
COPY requirements.txt /tmp/requirements.txt
RUN if [ -s /tmp/requirements.txt ]; then pip3 install --no-cache-dir --break-system-packages -r /tmp/requirements.txt; fi

# Custom addons live under addons/ in this repo; Odoo scans /mnt/extra-addons.
COPY --chown=odoo:odoo addons/ /mnt/extra-addons/

USER odoo

