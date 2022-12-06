import 'dart:math';

Random random = Random();

class Destination {
  final int? id, price, review;
  final List<String>? image;
  final String? name, description, category, location;
  final double? rate;

  Destination(
      {this.name,
      this.price,
      this.id,
      this.category,
      this.description,
      this.review,
      this.image,
      this.rate,
      this.location});
}

List<Destination> destinations = [
  Destination(
      id: 2,
      name: "Akagera Park",
      category: 'popular',
      image: [
        "beach/nusa-penida-beach.gif",
        "beach/nusa-penida-beach2.jpg",
        "beach/nusa-penida-beach3.jpg",
        "beach/nusa-penida-beach4.jpg",
      ],
      location: "East, Akagera",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      description:
          "With the help of our counter-poaching canine unit, African Parks overhauled law enforcement to help secure Akagera National Park and, as a result, not one high-value species has been lost to poaching since 2010",
      rate: 4.6),
  Destination(
      id: 7,
      price: random.nextInt(95) + 23,
      name: "Nyabihu Tea",
      image: [
        "mountain/kerinci.jpeg",
        "mountain/kerinci2.jpg",
        "mountain/kerinci3.jpg",
        "mountain/kerinci4.jpg",
      ],
      review: random.nextInt(300) + 25,
      category: "popular",
      location: "Western, Nyabihu",
      description:
          "RNTC is located in the North-West region of Rwanda, near Goma in DRC and the Lake Kivu. It operates on two different premises in the Rubaya and Nyabihu district",
      rate: 4),
  Destination(
      id: 3,
      name: "Karongi Beach",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      category: 'recommend',
      image: [
        "beach/pink-beach.jpg",
        "beach/pink-beach2.jpg",
        "beach/pink-beach3.jpg",
      ],
      location: "Western, Karongi",
      description:
          "Karongi, formerly known as Kibuye is a beautiful town on the shores of Lake Kivu a few hours from Kigali. Karongi is mostly known for its archipelago of islands in the bay outside of town and its many beautiful resorts on the shores of Lake Kivu. Karongi a popular weekend getaway for locals from Kigali and other places. a and has many wonderful resorts on the shores of Lake Kivu. A boat trip to one of the islands, the Museum of Environment and the Congo Nile Trail are some Karongi’s main attractions.",
      rate: 4.5),
  Destination(
      id: 8,
      name: "Bisoke Crater",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      category: "popular",
      image: [
        "mountain/rinjani.jpg",
        "mountain/rinjani2.jpg",
        "mountain/rinjani3.jpg",
      ],
      location: "Musanze, Kinigi ",
      description:
          "Bisoke Crater Lake hike is the most thrilling adventure worth taking part while on safari in Rwanda. Bisoke Volcano is also called Visoke, a dormant volcano within the Virunga Mountain ranges. It stands at altitude 3711 meters just at the border between Rwanda and the Democratic Republic of Congo (DRC).",
      rate: 4),
  Destination(
      id: 1,
      name: "Nyungwe Park",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      category: 'recommend',
      image: [
        "beach/kuta-mandalika-beach.jpeg",
        "beach/kuta-mandalika-beach2.jpg",
        "beach/kuta-mandalika-beach3.jpg",
      ],
      location: "Western, Rusizi",
      description:
          "One of the oldest rainforests in Africa, Nyungwe is rich in biodiversity and spectacularly beautiful. The mountainous region is teaming with wildlife, including a small population of chimpanzees as well as 12 other species of primate, including the Hoests monkey endemic to the Albertine Rift.",
      rate: 4.4),
  Destination(
      id: 9,
      name: "Volcano Park",
      review: random.nextInt(300) + 25,
      category: "popular",
      price: random.nextInt(95) + 23,
      image: [
        "mountain/semeru.jpg",
        "mountain/semeru2.jpg",
        "mountain/semeru3.jpg",
        "mountain/semeru4.jpg",
      ],
      location: "Musanze, Kinigi",
      description:
          "Virunga National Park is Africa’s most biodiverse protected area, home to over one thousand species of mammal, bird, reptile, and amphibian as well as 1/3 of the world’s endangered mountain gorillas. Located on the eastern edge of the Congo Basin, the world’s second-largest tropical rainforest.",
      rate: 4),
  Destination(
      id: 12,
      name: "Vilunga Natianal Park",
      category: "recommend",
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      image: [
        "mountain/lawu.jpg",
        "mountain/lawu2.jpg",
        "mountain/lawu3.jpg",
      ],
      location: "Kinigi, Musanze",
      description:
          "Virunga National Park is Africa’s most biodiverse protected area, home to over one thousand species of mammal, bird, reptile, and amphibian as well as 1/3 of the world’s endangered mountain gorillas. Located on the eastern edge of the Congo Basin, the world’s second-largest tropical rainforest,",
      rate: 4.4),
  Destination(
      id: 14,
      name: "Nyandungu Wet-land",
      review: random.nextInt(300) + 25,
      category: "recommend",
      price: random.nextInt(95) + 23,
      image: [
        "beach/ora-beach.jpg",
        "beach/ora-beach2.jpg",
        "beach/ora-beach3.jpg",
      ],
      location: "Nyandungu, Gasabo",
      description:
          "Nyandungu Eco-Park provides a space for residents and visitors to the city to explore and learn from nature, and is part of Rwanda’s efforts to harness eco-tourism to restore biodiversity and conserve urban wetland ecosystems.Urban wetlands play a critical role in preventing flooding, addressing pollution and are home to unique biodiversity",
      rate: 4.4),
  Destination(
      id: 13,
      review: random.nextInt(300) + 25,
      price: random.nextInt(95) + 23,
      name: "King's Palace",
      category: "recommend",
      image: [
        "mountain/merbabu.jpg",
        "mountain/merbabu2.jpg",
        "mountain/merbabu3.jpg",
      ],
      location: "Southern, Nyanza",
      description:
          "Situated on a hill 2km southwest of town, this fascinating museum is less about ancient history and more about royal residences. The displays centre on a replica king's ‘palace’.",
      rate: 4.4),
  Destination(
      review: random.nextInt(300) + 25,
      id: 15,
      name: "Kivu Beach",
      category: "popular",
      image: [
        "beach/togean-beach.jpg",
        "beach/togean-beach2.jpg",
        "beach/togean-beach3.jpg",
      ],
      price: random.nextInt(95) + 23,
      location: "Western, Rubavu",
      description:
          "Lake Kivu is a one of the Great Lakes of Africa, yet differently to most of the lakes in the neighbouring African countries there are no wild animals in Lake Kivu. What also makes it stand out is that there are many beaches for swimming on its shores. As Rwanda is a landlocked country, many people will look to the Lake Kivu Beaches when it comes to swimming.",
      rate: 4.4),
];
