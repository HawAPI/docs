#!/usr/bin/node

import * as fs from "fs";

/**
 * Replace the default retype colors with a custom colors. Following the main page color pallete.
 */
async function main() {
  console.log("[update-colors] Updating colors...");

  const json = fs.readFileSync("./_assets/colors.json", {
    encoding: "utf8",
    flag: "r",
  });
  const colors = new Map(Object.entries(JSON.parse(json)));

  fs.readFile("./build/resources/css/retype.css", "utf-8", (err, data) => {
    if (err) return console.error(err);

    let result = data;
    colors.forEach((value, key) => (result = result.replaceAll(key, value)));

    fs.writeFile("./build/resources/css/retype.css", result, "utf8", (err) => {
      if (err) return console.error(err);
    });
  });

  console.log("[update-colors] Updated colors!");
}

main();
