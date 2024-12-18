import lustre/attribute.{type Attribute, attribute}
import lustre/element/svg

pub fn cable(attributes: List(Attribute(a))) {
  svg.svg(
    [
      attribute("stroke-linejoin", "round"),
      attribute("stroke-linecap", "round"),
      attribute("stroke-width", "2"),
      attribute("stroke", "currentColor"),
      attribute("fill", "none"),
      attribute("viewBox", "0 0 24 24"),
      attribute("height", "24"),
      attribute("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        attribute(
          "d",
          "M17 21v-2a1 1 0 0 1-1-1v-1a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v1a1 1 0 0 1-1 1",
        ),
      ]),
      svg.path([attribute("d", "M19 15V6.5a1 1 0 0 0-7 0v11a1 1 0 0 1-7 0V9")]),
      svg.path([attribute("d", "M21 21v-2h-4")]),
      svg.path([attribute("d", "M3 5h4V3")]),
      svg.path([
        attribute(
          "d",
          "M7 5a1 1 0 0 1 1 1v1a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a1 1 0 0 1 1-1V3",
        ),
      ]),
    ],
  )
}
