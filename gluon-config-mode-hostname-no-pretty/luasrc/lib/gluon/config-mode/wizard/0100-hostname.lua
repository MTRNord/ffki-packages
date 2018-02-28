return function(form, uci)
	local pkg_i18n = i18n 'gluon-config-mode-hostname-no-pretty'

	local pretty_hostname = require "pretty_hostname"

	local s = form:section(Section)
	local o = s:option(Value, "hostname", pkg_i18n.translate("Node name"))
	o.default = pretty_hostname.get(uci)
	o.datatype = "minlength(1)"

	function o:write(data)
		pretty_hostname.set(uci, data)
	end

	return {'system'}
end
