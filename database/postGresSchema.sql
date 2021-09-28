/* Table 'products' */
CREATE TABLE products(
  id integer NOT NULL,
  "name" varchar NOT NULL,
  slogan varchar,
  description varchar,
  category varchar,
  default_price double precision NOT NULL,
  PRIMARY KEY(id)
);

/* Table 'styles' */
CREATE TABLE styles(
  id integer NOT NULL,
  products_id integer NOT NULL,
  "name" varchar,
  sale_price double precision,
  original_price double precision NOT NULL,
  "default?" integer,
  PRIMARY KEY(id)
);

/* Table 'skus' */
CREATE TABLE skus(
  id integer NOT NULL,
  styles_id integer NOT NULL,
  size varchar,
  quantity integer,
  PRIMARY KEY(id)
);

/* Table 'photos' */
CREATE TABLE photos(
  id integer NOT NULL,
  styles_id integer NOT NULL,
  url varchar,
  thumbnail_url varchar,
  PRIMARY KEY(id)
);

/* Table 'related' */
CREATE TABLE related(
  id integer NOT NULL,
  products_id integer NOT NULL,
  related_product_id integer,
  PRIMARY KEY(id)
);

/* Table 'features' */
CREATE TABLE features(
  id integer NOT NULL,
  products_id integer NOT NULL,
  feature varchar,
  "value" varchar,
  PRIMARY KEY(id)
);

/* Relation 'products_styles' */
ALTER TABLE styles
  ADD CONSTRAINT products_styles
    FOREIGN KEY (products_id) REFERENCES products (id);

/* Relation 'styles_styles' */
ALTER TABLE skus
  ADD CONSTRAINT styles_styles FOREIGN KEY (styles_id) REFERENCES styles (id);

/* Relation 'styles_table1' */
ALTER TABLE photos
  ADD CONSTRAINT styles_table1 FOREIGN KEY (styles_id) REFERENCES styles (id);

/* Relation 'products_related' */
ALTER TABLE related
  ADD CONSTRAINT products_related
    FOREIGN KEY (products_id) REFERENCES products (id);

/* Relation 'products_features' */
ALTER TABLE features
  ADD CONSTRAINT products_features
    FOREIGN KEY (products_id) REFERENCES products (id);
