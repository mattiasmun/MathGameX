mathgamex_sources = [
 'main.vala',
 'application.vala',
 'window.vala',
]

mathgamex_deps = [
 dependency('gtk4'),
 dependency('libadwaita-1', version: '>= 1.2'),
]

mathgamex_sources += gnome.compile_resources('mathgamex-resources',
 'mathgamex.gresource.xml',
 c_name: 'mathgamex'
)

executable('mathgamex', mathgamex_sources,
 dependencies: mathgamex_deps,
 install: true,
)
