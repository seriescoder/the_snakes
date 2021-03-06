#!/bin/sh

cargo build --release
rm -rf target/the_snakes
mkdir target/the_snakes

cp -r target/release/the_snakes assets bin target/the_snakes/
rm target/the_snakes.zip
cd target && zip -r the_snakes.zip the_snakes

echo "package is ready at target/the_snakes.zip"
