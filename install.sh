#!/bin/bash
echo "Installing dotfiles..."

echo " Choose from"

select environment in "virtualmachine" "exit"
do
    case $environment in
    virtualmachine|exit)
            break
            ;;
    *)
            echo "Invalid environment"
            ;;
    esac
done

if [ $environment = "exit" ]; then
    exit 0
else
    source install/link.sh $(pwd) $environment
    source install/apt-vim.sh $(pwd) $environment
fi

echo "Successfuly installed $environment's configuration"
