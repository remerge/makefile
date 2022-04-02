LOG_COLOR_error = dc322f
LOG_COLOR_warning = b58900
LOG_COLOR_notice = 859900
LOG_COLOR_info = 839496

notice = $(info $(1))
log = $(call $(1),$(shell $(PASTEL) -f paint $(LOG_COLOR_$(1)) $(2)))
