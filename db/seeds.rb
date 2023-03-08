puts "🌱 Seeding spices..."

# Seed categories
categories = Category.create([
  { name: "Electronics" },
  { name: "Clothing" },
  { name: "Books" },
])

# Seed products
electronics_category = Category.find_by(name: "Electronics")
clothing_category = Category.find_by(name: "Clothing")
books_category = Category.find_by(name: "Books")

products = Product.create([
  { name: "iPhone 13", description: "Latest iPhone model", price: "999.99", quantity: 10, category_id: electronics_category.id },
  { name: "MacBook Pro", description: "High-end laptop for professionals", price: "1999.99", quantity: 5, category_id: electronics_category.id },
  { name: "T-Shirt", description: "Plain white T-Shirt", price: "19.99", quantity: 20, category_id: clothing_category.id },
  { name: "Jeans", description: "Classic blue jeans", price: "49.99", quantity: 15, category_id: clothing_category.id },
  { name: "The Great Gatsby", description: "F. Scott Fitzgerald's classic novel", price: "12.99", quantity: 30, category_id: books_category.id },
  { name: "To Kill a Mockingbird", description: "Harper Lee's Pulitzer Prize-winning novel", price: "9.99", quantity: 25, category_id: books_category.id },
])

# Seed orders
orders = Order.create([
  { customer_name: "John Doe", customer_email: "john.doe@example.com", total_amount: 1119.98 },
  { customer_name: "Jane Smith", customer_email: "jane.smith@example.com", total_amount: 69.98 },
])

# Seed order items
iphone = Product.find_by(name: "iPhone 13")
macbook = Product.find_by(name: "MacBook Pro")
tshirt = Product.find_by(name: "T-Shirt")
jeans = Product.find_by(name: "Jeans")
gatsby = Product.find_by(name: "The Great Gatsby")
mockingbird = Product.find_by(name: "To Kill a Mockingbird")

OrderItem.create([
  { quantity: 1, product_id: iphone.id, order_id: orders.first.id },
  { quantity: 1, product_id: macbook.id, order_id: orders.first.id },
  { quantity: 2, product_id: tshirt.id, order_id: orders.last.id },
  { quantity: 1, product_id: jeans.id, order_id: orders.last.id },
  { quantity: 3, product_id: gatsby.id, order_id: orders.last.id },
  { quantity: 2, product_id: mockingbird.id, order_id: orders.last.id },
])


puts "✅ Done seeding!"
