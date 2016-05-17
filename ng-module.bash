#!/bin/bash

echo "Creating your @angular component named $1 with .ts extension"


TEXT_COMP=$"import {Component} from '@angular/core' "

echo "Do you wish to install this program?"

select yn in "component" "Directive" "pipe" "injectable/services"; do
    case $yn in
        component ) break;;
        Directive ) break ;;
	Service ) break;;
	pipe ) break;;
	injectable/services ) 

		TEXT_COMP+=$"import { Injectable } from '@angular/core'; 
			import 'rxjs/add/operator/map';
                       import 'rxjs/add/operator/catch';
                        
                        @Injectable() ";
	break;;
    esac
done

echo "$yn"

TEXT_COMP+="

@Component({
  selector:\"demo\",
  template: \`<h1>demo</h1>\`,
  directives: [],
  providers: []
})

export class $1 {
  constructor(){}
}" 

echo $TEXT_COMP > "$1.ts"


echo "file successfully create"



exit 0;
