class Planet {
  // Original parameters (unchanged)
  final int id;
  final String title;
  final String about;
  final String image;
  final String model3d;
  final String type;
  final double distanceFromSunAu; // Distance in Astronomical Units
  final double massEarths; // Mass relative to Earth
  final int numberOfMoons;
  final bool hasRings;

  // Added detailed astronomical properties
  final double distanceFromSunKm;
  final double lengthOfDayHours;
  final double orbitalPeriodYears;
  final double radiusKm;
  final String massKg; // Represented as String due to scientific notation
  final double gravityMs2;
  final String surfaceAreaKm2;

  const Planet({
    required this.id,
    required this.title,
    required this.about,
    required this.image,
    required this.model3d,
    required this.type,
    required this.distanceFromSunAu,
    required this.massEarths,
    required this.numberOfMoons,
    required this.hasRings,
    required this.distanceFromSunKm,
    required this.lengthOfDayHours,
    required this.orbitalPeriodYears,
    required this.radiusKm,
    required this.massKg,
    required this.gravityMs2,
    required this.surfaceAreaKm2,
  });

  static const List<Planet> planets = [
    Planet(
      id: 0,
      title: "Sun",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      image: 'assets/images/sun.png',
      model3d: 'assets/models/sun.glb',
      type: "The Sun: Our Solar System's Star",
      distanceFromSunAu: 0.0,
      massEarths: 333000.0,
      numberOfMoons: 0,
      hasRings: false,
      distanceFromSunKm: 0.0,
      lengthOfDayHours: 600.0,
      orbitalPeriodYears: 0.0,
      radiusKm: 696340.0,
      massKg: "1.989 × 10^30",
      gravityMs2: 274.0,
      surfaceAreaKm2: "6.09 × 10^12",
    ),
    Planet(
      id: 1,
      title: 'Mercury',
      about:
      'Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun\'s planets.',
      image: 'assets/images/mercury.png',
      model3d: 'assets/models/mercury.glb',
      type: 'Mercury: The Closest Planet',
      distanceFromSunAu: 0.39,
      massEarths: 0.055,
      numberOfMoons: 0,
      hasRings: false,
      distanceFromSunKm: 57909050.0,
      lengthOfDayHours: 1407.6,
      orbitalPeriodYears: 0.24,
      radiusKm: 2439.7,
      massKg: "3.3011 × 10^23",
      gravityMs2: 3.7,
      surfaceAreaKm2: "7.48 × 10^7",
    ),
    Planet(
      id: 2,
      title: 'Venus',
      about:
      'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earth\'s night sky after the Moon, Venus can cast shadows and can be visible to the naked eye in broad daylight.',
      image: 'assets/images/venus.png',
      model3d: 'assets/models/venus.glb',
      type: "Venus: Earth's Toxic Twin",
      distanceFromSunAu: 0.72,
      massEarths: 0.815,
      numberOfMoons: 0,
      hasRings: false,
      distanceFromSunKm: 108208000.0,
      lengthOfDayHours: 5832.5,
      orbitalPeriodYears: 0.62,
      radiusKm: 6051.8,
      massKg: "4.8675 × 10^24",
      gravityMs2: 8.87,
      surfaceAreaKm2: "4.60 × 10^8",
    ),
    Planet(
      id: 3,
      title: 'Earth',
      about:
      'Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29% of Earth\'s surface is land consisting of continents and islands.',
      image: 'assets/images/earth.png',
      model3d: 'assets/models/earth.glb',
      type: 'Earth: Our Blue Marble',
      distanceFromSunAu: 1.00,
      massEarths: 1.000,
      numberOfMoons: 1,
      hasRings: false,
      distanceFromSunKm: 149598023.0,
      lengthOfDayHours: 24.0,
      orbitalPeriodYears: 1.0,
      radiusKm: 6371.0,
      massKg: "5.972 × 10^24",
      gravityMs2: 9.807,
      surfaceAreaKm2: "5.10 × 10^8",
    ),
    Planet(
      id: 4,
      title: 'Mars',
      about:
      'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. It carries the name of the Roman god of war.',
      image: 'assets/images/mars.png',
      model3d: 'assets/models/mars.glb',
      type: 'Mars: The Red Planet',
      distanceFromSunAu: 1.52,
      massEarths: 0.107,
      numberOfMoons: 2,
      hasRings: false,
      distanceFromSunKm: 227939200.0,
      lengthOfDayHours: 24.6,
      orbitalPeriodYears: 1.88,
      radiusKm: 3389.5,
      massKg: "6.4171 × 10^23",
      gravityMs2: 3.721,
      surfaceAreaKm2: "1.44 × 10^8",
    ),
    Planet(
      id: 5,
      title: 'Jupiter',
      about:
      'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined.',
      image: 'assets/images/jupiter.png',
      model3d: 'assets/models/jupiter.glb',
      type: 'Jupiter: The Gas Giant',
      distanceFromSunAu: 5.20,
      massEarths: 317.800,
      numberOfMoons: 95,
      hasRings: true,
      distanceFromSunKm: 778547200.0,
      lengthOfDayHours: 9.93,
      orbitalPeriodYears: 11.86,
      radiusKm: 69911.0,
      massKg: "1.8982 × 10^27",
      gravityMs2: 24.79,
      surfaceAreaKm2: "6.14 × 10^10",
    ),
    Planet(
      id: 6,
      title: 'Saturn',
      about:
      'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.',
      image: 'assets/images/saturn.png',
      model3d: 'assets/models/saturn.glb',
      type: 'Saturn: The Ringed Planet',
      distanceFromSunAu: 9.58,
      massEarths: 95.200,
      numberOfMoons: 146,
      hasRings: true,
      distanceFromSunKm: 1433449370.0,
      lengthOfDayHours: 10.7,
      orbitalPeriodYears: 29.46,
      radiusKm: 58232.0,
      massKg: "5.6834 × 10^26",
      gravityMs2: 10.44,
      surfaceAreaKm2: "4.27 × 10^10",
    ),
    Planet(
      id: 7,
      title: 'Uranus',
      about:
      'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune.',
      image: 'assets/images/uranus.png',
      model3d: 'assets/models/uranus.glb',
      type: 'Uranus: The Tilted Planet',
      distanceFromSunAu: 19.22,
      massEarths: 14.500,
      numberOfMoons: 28,
      hasRings: true,
      distanceFromSunKm: 2870972200.0,
      lengthOfDayHours: 17.2,
      orbitalPeriodYears: 84.01,
      radiusKm: 25362.0,
      massKg: "8.6810 × 10^25",
      gravityMs2: 8.69,
      surfaceAreaKm2: "8.08 × 10^9",
    ),
    Planet(
      id: 8,
      title: 'Neptune',
      about:
      'Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.',
      image: 'assets/images/neptune.png',
      model3d: 'assets/models/neptune.glb',
      type: 'Neptune: The Distant World',
      distanceFromSunAu: 30.05,
      massEarths: 17.100,
      numberOfMoons: 16,
      hasRings: true,
      distanceFromSunKm: 4498252900.0,
      lengthOfDayHours: 16.1,
      orbitalPeriodYears: 164.8,
      radiusKm: 24622.0,
      massKg: "1.0241 × 10^26",
      gravityMs2: 11.15,
      surfaceAreaKm2: "7.61 × 10^9",
    ),

  ];
}