.PHONY: test

test:
	@rm -f .test-org-id-locations
	emacs -Q --batch \
	      -L . \
	      -l ert \
	      -l test-ob-rust.el \
	      -f ert-run-tests-batch-and-exit
