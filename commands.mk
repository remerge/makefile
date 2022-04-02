has-command = $(if $(shell type -P $(1)),$(1),$(2))

need-command = $(if $(call has-command,$(1)),$(1),\
	$(call log,error,"missing $(1) in PATH (run make install)"))

want-command = $(if $(call has-command,$(1)),$(1),\
	$(call log,warning,"no $(1) in PATH (run make install)"))

first-command = $(firstword $(foreach command,$(1),$(call want-command,$(1))))

COLORDIFF_COMMANDS = colordiff bat cat
COLORDIFF = $(call first-command,$(COLORDIFF_COMMANDS))

GLOW_COMMANDS = glow bat cat
GLOW = $(call first-command,$(GLOW_COMMANDS))

PASTEL = $(call need-command,pastel)

PRETTIER = $(call need-command,prettier)

SHELLCHECK = $(call need-command,shellcheck)

SHFMT = $(call need-command,shfmt)
SHFMT_ARGS = -i 4 -sr

SPONGE = $(call need-command,sponge)
