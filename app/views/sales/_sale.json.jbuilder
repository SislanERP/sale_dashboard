json.extract! sale, :id, :date_doc, :number_doc, :quantity, :price, :created_at, :updated_at
json.year sale.date_doc.year
json.month sale.date_doc.month
json.type_doc sale.type_doc.try(:name)
json.destination sale.destination.try(:name)
json.client sale.client.try(:name)
json.broker sale.broker.try(:name)
json.type_product sale.product.line_product.type_product.try(:name)
json.line_product sale.product.line_product.try(:name)
json.product sale.product.try(:name)
json.DT_RowId sale.id
