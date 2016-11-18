run:
	go build 
	./mycontext &
	cd fakesrv && go build && ./fakesrv &

test:
	@echo "======= test without timeout ======="
	curl localhost:9090/search?q=title:6
	@echo "======= test with timeout 1s ======="
	curl localhost:9090/search?q=title:6\&timeout=1s
	@echo "======= test with timeout 4s ======="
	curl localhost:9090/search?q=title:6\&timeout=4s

