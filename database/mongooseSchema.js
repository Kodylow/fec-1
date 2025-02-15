var mongoose = require('mongoose');
var Schema = mongoose.Schema;
var products = new Schema({
  name: {
    type: String,
    required: true
  },
  slogan: {
    type: String
  },
  description: {
    type: String
  },
  category: {
    type: String
  },
  default_price: {
    type: Schema.Types.Decimal128,
    required: true
  }
});

var styles = new Schema({
  products_id: {
    type: Schema.Types.ObjectId,
    required: true,
    ref: 'products'
  },
  name: {
    type: String
  },
  sale_price: {
    type: Schema.Types.Decimal128
  },
  original_price: {
    type: Schema.Types.Decimal128,
    required: true
  },
  default ? : {
    type: Number,
    required: true
  }
});

var related = new Schema({
  products_id: {
    type: Schema.Types.ObjectId,
    required: true,
    ref: 'products'
  },
  reladet_product_id: {
    type: Number
  }
});

var features = new Schema({
  products: {
    type: Schema.Types.ObjectId,
    required: true,
    ref: 'products'
  },
  feature: {
    type: String
  },
  value: {
    type: String
  }
});

var skus = new Schema({
  styles_id: {
    type: Schema.Types.ObjectId,
    required: true,
    ref: 'styles'
  },
  size: {
    type: String
  },
  quantity: {
    type: Number
  }
});

var photos = new Schema({
  styles_id: {
    type: Schema.Types.ObjectId,
    required: true,
    ref: 'styles'
  },
  url: {
    type: String
  },
  thumbnail_url: {
    type: String
  }
});
