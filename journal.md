Tirsdag 01/09/2026

Arbeids journal for i dag:

I dag lastet jeg ned Terra


1. Mål for dagen

Forstå konseptet Infrastructure as Code (IaC) og forskjellen på skyleverandører (AWS/Azure) og automasjonsverktøy (Terraform).
Sette opp et fungerende utviklingsmiljø med Terraform på egen maskin.
Gjennomføre en komplett livssyklus (opprette, endre, slette) for en lokal ressurs ved hjelp av Terraform-kode.
Rulle ut en ekte, virtuell server (EC2-instans) i AWS via kode.


2. Utført arbeid & Framgang

Miljø oppsett:

Installert Terraform CLI (v1.16.0) i WSL. Løst en nettverksblokkering (Error 429) ved å hente GPG-nøkler via `curl` i stedet for `wget`.

Lokal testing:
Skrevet en `main.tf` som opprettet en lokal fil (`local_file`). Testet multilinje-syntaks (`<<EOT`) for å endre innholdet og erfare hvordan Terraform destruerer og gjenoppretter ressurser (`-/+ destroy and then create replacement`).

AWS-integrasjon og feilsøking:
Koblet terminalen opp mot AWS ved bruk av miljøvariabler for Access Keys (`AWS_ACCESS_KEY_ID` og `AWS_SECRET_ACCESS_KEY`).
Endret koden til å rulle ut en EC2-instans i regionen `eu-north-1` (Stockholm).

Feilsøking 1 (InvalidAMIID):
Løst feilmelding ved å oppdatere til en rykende fersk og gyldig AMI-ID for Ubuntu 24.04 LTS.
Feilsøking 2 (UnauthorizedOperation):
Løst tilgangsfeil (403 Forbidden) for AWS-brukeren `hussein` ved å gå inn i AWS IAM-konsollen og tildele rettigheten `AmazonEC2FullAccess`.
Suksessfull utrulling:
Koden kjørte feilfritt etter rettighetsendringen, og en ekte skyserver ble opprettet.

3. Viktige verktøy og kommandoer lært i dag
terraform init: Klargjør mappen og laster ned plugins/providers.
terraform plan: Viser en trygg forhåndsvisning av hva koden vil gjøre.
terraform apply: Utfører koden og bygger infrastrukturen i praksis.
terraform destroy: Sletter alt koden har bygget og stopper eventuelle kostnader.
terraform.tfstate: Lært at dette er "hjernen" (state-filen) til Terraform som man aldri må slette manuelt.

4. Veien videre / Neste steg

Koble WSL-terminalen opp mot en ekte AWS-konto ved hjelp av miljøvariabler for Access Keys (AWS_ACCESS_KEY_ID og AWS_SECRET_ACCESS_KEY).
Gjøre om main.tf fra å lage en lokal tekstfil til å rulle ut en ekte, virtuell Linux-server (EC2-instans) i AWS sitt datasenter i Stockholm.

Sammendrag:

Jeg har installert og mestret Terraform i WSL-terminalen.
Jeg har skrevet og modifisert HCL-kode.
Jeg har feilsøkt og fikset ekte sky-rettigheter i AWS (IAM).
Jeg har rullet ut (og ryddet opp) en ekte skyserver.
Til slutt har jeg dokumentert alt i en profesjonell Markdown-journal og pushet det trygt til GitHub.