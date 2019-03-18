SLEIGH=../../../../../support/sleigh
PROCESSOR=mera400

$(PROCESSOR): $(PROCESSOR).sla

%.sla: %.slaspec
	$(SLEIGH) $< $@

.phony: clean
clean:
	rm -f $(PROCESSOR).sla
