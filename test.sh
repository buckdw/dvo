ansible-playbook \
-vv \
-i hosts \
$(basename ${BASH_SOURCE} .sh).yml
