# PPUD Alpha Technical Architecture Diagrams

This repository contains the source code for diagrams generated for the Ministry of Justice PPUD replacement alpha project, carried out by [dxw](https://dxw.com).

## Requirements

* [PlantUML](https://plantuml.com/): install (on macOS) from [homebrew](https://brew.sh) with `brew install plantuml`.

## Repository layout

  * `src` contains the source PlantML code for all diagrams discussed below.
  * `png` directory contains rendered diagrams in PNG format.

## Usage

To render all diagrams, run `make`. PNG versions of all diagrams will be created in the `png` directory.

`make clean` will remove all rendered images, and `make rebuild` will automatically remove and re-render everything.

## Diagrams

### Legacy database diagrams

The `legacy_db` directory contains diagrams that describe the legacy PPUD database structure. It includes all tables in the database, and _should_ include all the important relationships between them. The tables are split into multiple files and namespaces by concern to help understand the data.

The files `style.puml` and `style_minimal.puml` are included in each file, and can be swapped between to generate diagrams of different complexity. The minimal style leaves out lookup tables and field details for tables, producing much smaller diagrams for use where the detail isn't necessary.

### Service-oriented database views

The `services` subdirectory contains high-level views of the data relevant to particular user-facing services as identified in the Alpha.

### C4 diagrams

The top level directory contains some [C4 model](https://c4model.com/) diagrams as used in the alpha report. These are named as `c1_*` or `c2_*` as appropriate to their level of detail.

### Miscellaneous diagrams

The top level directory also contains some miscellaneous diagrams for the migration process, timeline, and a diagram used to illustrate how PPUD data links together via offender identifiers.
