import os

podspec = "ExplodingNumbers.podspec"
allow_warning = True

# list all the sources of your dependencies
sources = [
    "https://github.com/CocoaPods/Specs.git",
    "https://int123c@bitbucket.org/jrmfchina/jrmf-specs.git"
] 

command = "pod lib lint " + podspec + " --sources=" + ",".join(sources)
if allow_warning:
    command += " --allow-warnings"

print("running: " + command)
os.system(command)
