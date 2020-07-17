class Product {
  final int id, price;
  final String title, description, checkInTime,checkoutTime,guestContact;

  Product({this.id, this.price, this.title, this.description, this.checkInTime,this.checkoutTime,this.guestContact});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 399,
    title: "Naman",
    checkInTime: "11-july-2020 at 12:00hrs",
    checkoutTime: "11-july-2020 at 03:00hrs",
    description:
        "Booking id- BR420",
    guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 2,
      price: 499,
      title: "Chadi",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Booking id- BR420",
      guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 3,
      price: 56,
      title: "Prakashi",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Booking id- BR420",
      guestContact: "Guest Contact-8548545145"
  ),
];

List<Product> notifications = [
  Product(
      id: 1,
      price: 399,
      title: "Naman",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "This is a system generated message from the admin of this application",
      guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 2,
      price: 499,
      title: "Chadi",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Something went wrong",
      guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 3,
      price: 56,
      title: "Anant",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Go goa gone",
      guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 4,
      price: 57,
      title: "Shivam",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Go goa gone",
      guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 5,
      price: 57,
      title: "kashi",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Go goa gone",
      guestContact: "Guest Contact-8548545145"
  ),
  Product(
      id: 6,
      price: 58,
      title: "Prakashi",
      checkInTime: "11-july-2020 at 12:00hrs",
      checkoutTime: "11-july-2020 at 03:00hrs",
      description:
      "Go goa gone",
      guestContact: "Guest Contact-8548545145"
  ),
];
