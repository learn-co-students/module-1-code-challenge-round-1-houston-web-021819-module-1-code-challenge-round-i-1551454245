
## Deliverables

### Basic Class Methods and Properties

#### Build the following methods on the `Customer` class

<!-- - `Customer.all`
  - should return **all** of the customer instances -->
<!-- - `Customer.find_by_name(name)`
  - given a string of a **full name**, returns the **first customer** whose full name matches -->
<!-- - `Customer.find_all_by_first_name(name)`
  - given a string of a first name, returns an **array** containing all customers with that first name -->
<!-- - `Customer.all_names`
  - should return an **array** of all of the customer full names

--- -->

#### Build out the following methods on the `Restaurant` class

<!-- - `Restaurant.all`
  - returns an array of all restaurants -->
<!-- - `Restaurant.find_by_name(name)`
  - given a string of restaurant name, returns the first restaurant that matches -->

---

#### Build out the following methods on the `Review` class

<!-- - `Review.all`
  - returns all of the reviews
- `Review#customer`
  - returns the customer object for that given review
  - Once a review is created, I should not be able to change the author
- `Review#restaurant`
  - returns the restaurant object for that given review
  <!-- - Once a review is created, I should not be able to change the restaurant -->
<!-- - `Review#rating`
  - returns the star rating for a restaurant. This should be an integer from 1-5 -->
<!-- - `Review#content`
  - returns the review content, as a string, for a particular review -->

---

### Associations and Aggregate Methods

#### Customer

<!-- - `Customer#add_review(restaurant, content, rating)`
  - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant. -->
<!-- - `Customer#num_reviews`
  - Returns the total number of reviews that a customer has authored -->
<!-- - `Customer#restaurants`
  - Returns a **unique** array of all restaurants a customer has reviewed -->

#### Restaurant

- `Restaurant#customers`
  - Returns a **unique** list of all customers who have reviewed a particular restaurant.
- `Restaurant#reviews`
  - returns an array of all reviews for that restaurant
- `Restaurant#average_star_rating`
  - returns the average star rating for a restaurant based on its reviews
- `Restaurant#longest_review`
  - returns the longest review content for a given restaurant

---
