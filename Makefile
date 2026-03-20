.PHONY: generate

PROTO_PATH := proto/sso
GEN_PATH := ./gen/go

generate:
	mkdir -p $(GEN_PATH)
	protoc -I proto $(PROTO_PATH)/*.proto \
		--go_out=$(GEN_PATH) --go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_PATH) --go-grpc_opt=paths=source_relative