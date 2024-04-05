/// Generate a title page
///
/// - `title`: The title of the document
/// - `subtitle`: The subtitle of the document
/// - `author`: The author of the document
/// - `bottom-text`: The text at the bottom of the page
#let title-page(title: none, subtitle: none, author: none, bottom-text: none) = page("a4")[
  #v(2.5%)
  #align(
    center,
    grid(
      align: center + horizon,
      columns: (auto, auto),
      column-gutter: 2%,
      image("./school-logo.svg", height: 10%),
      image("./school-text.svg", height: 6%),
    ),
  )
  #align(center)[#text(title, size: 32pt, font: ("Bodoni", "Source Han Serif"))]
  #align(center)[#text(subtitle, size: 24pt, font: ("Bodoni", "Source Han Serif"))]
  #align(
    center,
    text(size: 12pt, font: ("Bodoni", "Source Han Serif"))[
      #author
    ],
  )
  #place(
    bottom + center,
    [
      #align(
        center,
        text(size: 12pt, font: ("Bodoni", "Source Han Serif"))[
          #bottom-text
        ],
      )
    ],
  )
]
