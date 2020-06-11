class PlanetDetails{
   String id;
   String name;
   String location;
   String distance;
   String gravity;
   String description;
   String image;
   String picture;
   PlanetDetails({this.id,this.name,this.location,this.gravity,this.distance,this.description,this.image,this.picture});
}

List <PlanetDetails> planets = [
  PlanetDetails(
      id: "1",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "57.9m Km",
      gravity: "3.7 m/s ",
      description: "Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 88 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger to the gods.",
      image: "assets/images/mercury.png",
      picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"),
  PlanetDetails(
      id: "2",
      name: "Venus",
      location: "Milkyway Galaxy",
      distance: "108.62m Km",
      gravity: "8.8 m/s ",
      description: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in the night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight. Venus lies within Earth's orbit, and so never appears to venture far from the Sun, either setting in the west just after dusk or rising in the east a bit before dawn. Venus orbits the Sun every 224.7 Earth days.With a rotation period of 243 Earth days. Venus does not have any moons.",
      image: "assets/images/venus.png",
      picture: "https://cdn.mos.cms.futurecdn.net/dCYrexD6ofC5rnzx6UaZX8.jpg"),
  PlanetDetails(
      id: "3",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "149.6m Km",
      gravity: "9.8 m/s ",
      description: "Earth is the third planet from the Sun and the only object in the Universe known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times.",
      image: "assets/images/earth.png",
      picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg"
  ),
  PlanetDetails(
      id: "4",
      name: "Mars",
      location: "Milkyway Galaxy",
      distance: "227.9m Km",
      gravity: "3.711 m/s ",
      description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the 'Red Planet' because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.",
      image: "assets/images/mars.png",
      picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg"
  ),
  PlanetDetails(
      id: "5",
      name: "Jupiter",
      location: "Milkyway Galaxy",
      distance: "773.9m Km",
      gravity: "24.79 m/s ",
      description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter is one of the brightest objects visible to the naked eye in the night sky, and has been known to ancient civilizations since before recorded history. It is named after the Roman god Jupiter. When viewed from Earth, Jupiter can be bright enough for its reflected light to cast shadows, and is on average the third-brightest natural object in the night sky after the Moon and Venus.",
      image: "assets/images/jupiter.png",
      picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia22946-16.jpg"),
  PlanetDetails(
      id: "6",
      name: "Saturn",
      location: "Milkyway Galaxy",
      distance: "1.4b Km",
      gravity: "10.44  m/s ",
      description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive. Saturn is named after the Roman god of wealth and agriculture; its astronomical symbol ♄ represents the god's sickle.",
      image: "assets/images/saturn.png",
      picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/stsci-h-p1943a-f-2076x1484.png"),
  PlanetDetails(
      id: "7",
      name: "Uranus",
      location: "Milkyway Galaxy",
      distance: "2.9b Km",
      gravity: "8.8 m/s ",
      description: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn. For this reason, scientists often classify Uranus and Neptune as ice giants to distinguish them from the gas giants. Uranus\'s atmosphere is similar to Jupiter\'s and Saturn\'s in its primary composition of hydrogen and helium but it contains more  such as water ammonia and methane along with traces of other hydrocarbons.",
      image: "assets/images/uranus.png",
      picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia18182-uranus-voyager1.png"),
  PlanetDetails(
      id: "8",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "4.4b Km",
      gravity: "11.15 m/s ",
      description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus, which is 15 times the mass of Earth and slightly larger than Neptune. Neptune orbits the Sun once every 164.8 years at an average distance of 30.1 astronomical units (4.50×109 km). It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident",
      image: "assets/images/neptune.png",
      picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg"
  ),
  PlanetDetails(
      id: "9",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "150m Km",
      gravity: "1.62 m/s ",
      description: "The Moon is an astronomical body that orbits planet Earth, being Earth's only permanent natural satellite. It is the fifth-largest natural satellite in the Solar System, and the largest among planetary satellites relative to the size of the planet that it orbits (its primary). Following Jupiter's satellite Io, the Moon is second-densest satellite among those whose densities are known.",
      image: "assets/images/moon.png",
      picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg"
  ),
];

