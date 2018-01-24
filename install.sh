#!/bin/bash
echo "Installing dotfiles..."

echo " Choose from"

select environment in virtualmachine desktop exit
do
    case $environment in
    virtualmachine|desktop|exit)
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
    source install/link.sh $environment
    source install/apt-vim.sh
fi

echo "Successfuly installed $environment dotfiles"
