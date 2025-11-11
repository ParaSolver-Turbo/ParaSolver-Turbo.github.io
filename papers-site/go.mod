module github.com/HugoBlox/hugo-blox-builder/starters/academic-cv

go 1.19

require (
	github.com/HugoBlox/hugo-blox-builder/modules/blox-plugin-netlify v1.1.2
	github.com/HugoBlox/hugo-blox-builder/modules/blox-tailwind v0.9.0
)

replace github.com/HugoBlox/hugo-blox-builder/modules/blox-plugin-netlify => ./external/hugo-blox-builder/modules/blox-plugin-netlify

replace github.com/HugoBlox/hugo-blox-builder/modules/blox-tailwind => ./external/hugo-blox-builder/modules/blox-tailwind

replace github.com/HugoBlox/hugo-blox-builder/modules/blox-analytics => ./external/hugo-blox-builder/modules/blox-analytics

replace github.com/HugoBlox/hugo-blox-builder/modules/blox-plugin-decap-cms => ./external/hugo-blox-builder/modules/blox-plugin-decap-cms

replace github.com/HugoBlox/hugo-blox-builder/modules/blox-plugin-reveal => ./external/hugo-blox-builder/modules/blox-plugin-reveal
