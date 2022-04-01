has-command = $(if $(shell which $(1)),$(1),$(2))

need-command = $(if $(call has-command,$(1)),$(1),\
	$(call log,error,"missing $(1) in PATH (consider brew install $(1))"))

want-command = $(if $(call has-command,$(1)),$(1),\
	$(call log,warning,"no $(1) in PATH (consider brew install $(1))"))

first-command = $(firstword $(foreach command,$(1),$(call want-command,$(1))))
