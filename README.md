# Scraping Top Moto GP polesitters from Driven Motorsport

This is a simple R script that scrapes the top Moto Gp polesitters from the driven motorsport website and saves them into a CSV file. The script uses the `robotstxt`, `dplyr`, and `rvest` R packages to scrape the website and extract the song data.

## Usage

To use this script, you will need to have R installed on your computer, as well as the `robotstxt`, `dplyr`, and `rvest` packages. Once you have these installed, simply run the `motogp.R` script in RStudio or on the command line to scrape the data.

The script will output a CSV file called `motogp.csv` with the following columns:

- `position`: The position of the rider from driven motorsport
- `pole`: The amount of poles
- `rider`: The name of the rider who took the pole.
