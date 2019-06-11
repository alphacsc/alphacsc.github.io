for f in $(diff -X .ignore -rq .. ../../../../phd/alphacsc/doc/_build/html/ | grep -E "^Files *" | awk '{print $4":"$2}'); do
	cp $(echo $f | awk '{split ($0, a, ":"); print a[1]" "a[2]}')
done
