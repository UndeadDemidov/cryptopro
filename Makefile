# ==============================================================================
# Arguments passing to Makefile commands

# pass a license key thru argument <make_command> KEY=XXXXXXX
# or put it in /keys/license.key file
KEY_FILE = $(pwd)/keys/license.key
KEY = `cat .$(KEY_FILE)`

# ==============================================================================
# Docker run commands

run:
	docker run --rm -it \
    -v "/var/opt/cprocsp/keys/$(whoami):/var/opt/cprocsp/keys/root" \
    -v "$$(pwd)/docs:/home" \
    -e "LICENSE_KEY=$(KEY)" \
    cryptopro bash