#!/bin/bash
BOOKTITLE=$1
FILEPATH=$2
case [[ -d $FILEPATH ]]; then do
    {
        cd $FILEPATH;
        mkdir $BOOKTITLE;
        cd $BOOKTITLE;
        touch notes-and-examples.org bib.org;
        git add .;
        git commit -m "First commit.";
        git commit;
    }
    done
else if [[ -d ~/library/auto ]]; then do
    {
        book-init $BOOKTITLE '~/library/auto';
    }
done
else do
    {
        cd ~;
        git clone https://github.com/Bumbling/library.git;
        cd library/auto;
   }
done
esac
