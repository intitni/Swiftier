import os

podspec = "Swiftier.podspec"
specs = "algebragame"
allow_warnings = True

command = "pod repo push " + specs + " " + podspec
if allow_warnings:
    command += " --allow-warnings"
print("running: " + command)
os.system(command)