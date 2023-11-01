#!/usr/bin/node

import * as fs from "fs";

const ERROR_FOLDER = "./build/error/";

/**
 * Move the error files to '/error' directory. This is the default path to spring display error files.
 */
async function main() {
  console.log(
    "[spring-requirements] Updating project files to match spring 'error' requirements..."
  );

  if (!fs.existsSync(ERROR_FOLDER)) fs.mkdirSync(ERROR_FOLDER);

  fs.renameSync("./build/404.html", ERROR_FOLDER + "404.html");

  console.log("[spring-requirements] Updated files!");
}

main();
