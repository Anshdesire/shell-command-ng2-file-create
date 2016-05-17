echo "Creating your @angular component $2 namaed $1 with .ts extension"

TEXT = ''
echo "Do you wish to install this program?"
select yn in "component" "Directive" "Service" "pipe"; do
    case $yn in
        component ) echo 'good'; break;;
        Directive ) break ;;
	Service ) break;;
	pipe ) break;;
    esac
done

echo "$yn"

echo "import {Component} from '@angular/core'

@Component({
  selector:\"jrny-login\",
  template: \`<h1>Logging </h1>\`,
  directives: [],
  providers: []
})

export class $1 {
  constructor(){}
}" > "$1.ts"


echo "file successfully create"



exit 0;
