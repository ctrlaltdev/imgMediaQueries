#!/usr/bin/env bash

IMGEXT="jpg"

while getopts s:p:n:e: option
    do
        case "${option}"
            in
            s) SELECTOR=${OPTARG};;
            p) IMGPATH=${OPTARG};;
            n) IMGNAME=${OPTARG};;
            e) IMGEXT=${OPTARG};;
        esac
    done

if [ "$SELECTOR" ] & [ $IMGPATH ] & [ $IMGPATH ];
    then
        echo -e "\n\n"

        GEN="${SELECTOR} {\n\tbackground-image: url('${IMGPATH}${IMGNAME}_large.${IMGEXT}');\n}\n@media only screen and (-webkit-min-device-pixel-ratio: 1.5), only screen and (min-resolution: 1.5dppx), (-webkit-min-device-pixel-ratio: 1.5), (min-resolution: 144dpi) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_large_2x.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 1068px) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_medium.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 1068px) and (-webkit-min-device-pixel-ratio: 1.5), only screen and (max-width: 1068px) and (min-resolution: 1.5dppx), only screen and (max-width: 1068px) and (min-resolution: 144dpi) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_medium_2x.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 735px) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_small.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 735px) and (-webkit-min-device-pixel-ratio: 1.5), only screen and (max-width: 735px) and (min-resolution: 1.5dppx), only screen and (max-width: 735px) and (min-resolution: 144dpi) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_small_2x.${IMGEXT}');\n\t}\n}\n"
        
        echo -e $GEN

        echo -e "\n\n"

    else

        echo -n "Selector? "
        read SELECTOR

        echo -n "Image Path? "
        read IMGPATH

        echo -n "Image name? "
        read IMGNAME

        echo -n "Image extention? "
        read IMGEXT

        echo -e "\nYou've entered:\n\nSelector: ${SELECTOR}\nImage path: ${IMGPATH}\nImage name: ${IMGNAME}\n\nImage extention: ${IMGEXT}\n"
        read -p "Is this correct? (Y/N)" -n 1 -r

        if [[ $REPLY =~ ^[Nn]$ ]]
            then
                exit 0
            elif [[ $REPLY =~ ^[Yy]$ ]]
            then
                echo -e "\n\n"

                GEN="${SELECTOR} {\n\tbackground-image: url('${IMGPATH}${IMGNAME}_large.${IMGEXT}');\n}\n@media only screen and (-webkit-min-device-pixel-ratio: 1.5), only screen and (min-resolution: 1.5dppx), (-webkit-min-device-pixel-ratio: 1.5), (min-resolution: 144dpi) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_large_2x.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 1068px) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_medium.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 1068px) and (-webkit-min-device-pixel-ratio: 1.5), only screen and (max-width: 1068px) and (min-resolution: 1.5dppx), only screen and (max-width: 1068px) and (min-resolution: 144dpi) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_medium_2x.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 735px) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_small.${IMGEXT}');\n\t}\n}\n@media only screen and (max-width: 735px) and (-webkit-min-device-pixel-ratio: 1.5), only screen and (max-width: 735px) and (min-resolution: 1.5dppx), only screen and (max-width: 735px) and (min-resolution: 144dpi) {\n\t${SELECTOR} {\n\t\tbackground-image: url('${IMGPATH}${IMGNAME}_small_2x.${IMGEXT}');\n\t}\n}\n"
                
                echo -e $GEN

                echo -e "\n\n"
        fi

fi