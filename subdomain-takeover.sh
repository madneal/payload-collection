## Subdomain Enumeration
	echo "Checking with Assetfinder!";
	assetfinder -subs-only fb.com >> ~/results/fb.com/subs/assetfinder.txt;
	echo "Checking with Subfinder!";
	subfinder -d fb.com -recursive -silent -all -t 500 -o ~/results/fb.com/subs/subfinder.txt;
	echo "Checking with Sublist3r!";
	sublist3r -d fb.com -n -t 500 -o ~/results/fb.com/subs/sublist3r.txt;
	echo "Checking with Amass!";
	amass enum -passive -norecursive -noalts -d fb.com -o ~/results/fb.com/subs/amass.txt;

## Subdomain Concatenation
	cat ~/results/fb.com/subs/*.txt > ~/results/fb.com/subs.txt;

## Subdomain Enumeration Cleanup
	rm -rf ~/results/fb.com/subs;

## Subdomain Enumeration Results
	sort -u ~/results/fb.com/subs.txt -o ~/results/fb.com/subs.txt

## Elastic Beanstalk Checker
while IFS= read -r domain; do
	if dig +short $domain | grep elasticbeanstalk; then echo $domain | tee -a ~/results/fb.com/elasticbeanstalk.txt; fi;
done < ~/results/fb.com/subs.txt
