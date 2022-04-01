LOG_COLOR_error = dc322f
LOG_COLOR_warning = b58900
LOG_COLOR_notice = 268bd2

PASTEL = $(call need-command,pastel)

log = $(call $(1),$(shell $(PASTEL) -f paint $(LOG_COLOR_$(1)) $(2) >&2))
