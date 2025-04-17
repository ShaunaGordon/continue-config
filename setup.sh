#! /bin/bash

workingDir=$(pwd)

# No .continue directory yet? Make it.
# It should already exist, but just in case.
if [[ ! -d ~/.continue ]]; then
  mkdir ~/.continue
fi

# If it already exists, config.yaml probably also does, too,
# but it's probably the default or an old config. Even so, we
# don't want to clobber it, in case its contents are needed, so
# let's back it up and replace it with the one here.
if [[ -f ~/.continue/config.yaml ]]; then
  mv ~/.continue/config.yaml ~/.continue/config.yaml.bak
fi

ln -s "$workingDir/config.yaml" ~/.continue/config.yaml
ln -sn "$workingDir/models" ~/.continue/models
ln -sn "$workingDir/rules" ~/.continue/rules
ln -sn "$workingDir/prompts" ~/.continue/prompts
ln -sn "$workingDir/context" ~/.continue/context
ln -sn "$workingDir/docs" ~/.continue/docs
ln -sn "$workingDir/assistants" ~/.continue/assistants

# If the backup is a symlink, then just remove it,
# it just points back to here anyway.
# This mostly only happens when testing this script.
if [[ -L ~/.continue/config.yaml.bak ]]; then
  rm ~/.continue/config.yaml.bak
fi
