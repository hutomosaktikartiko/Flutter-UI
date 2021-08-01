class HotelModel {
  String? image, name, location, rating, price, distance;

  HotelModel(
      {this.image,
      this.distance,
      this.location,
      this.name,
      this.price,
      this.rating});
}

final List<HotelModel> recommendHotels = [
  HotelModel(
      image: "example_1.png",
      name: "Bimosaurus Hotel",
      location: "Safari, Buittenzorg",
      rating: "4.9",
      price: "599,999"),
  HotelModel(
      image: "example_2.png",
      name: "Diano Sas Hotel",
      location: "Bali, Denpasar",
      rating: "4.9",
      price: "599,999"),
];

final List<HotelModel> newHotels = [
  HotelModel(
      image: "example_6.png",
      name: "GH Setiabuddy",
      location: "Setiabuddy, Bandung",
      rating: "4.9"),
  HotelModel(
      image: "example_4.png",
      name: "Damsaurus Hotel",
      location: "Pasteur, Bandung",
      rating: "4.9"),
  HotelModel(
      image: "example_5.png",
      name: "Andjoy Hotel",
      location: "Kebon Jaty, Bandung",
      rating: "4.9"),
];

final List<HotelModel> nearbyHotels = [
  HotelModel(
      image: "example_3.png",
      name: "GH Setiabuddy",
      location: "Setiabuddy, Bandung",
      distance: "0,1"),
  HotelModel(
      image: "example_4.png",
      name: "Damsaurus Hotel",
      location: "Pasteur, Bandung",
      distance: "1,6"),
  HotelModel(
      image: "example_5.png",
      name: "Andjoy Hotel",
      location: "Kebon Jaty, Bandung",
      distance: "2,2"),
];
