if status --is-login
    set -x ARMLMD_LICENSE_FILE /opt/arm/developmentstudio-2022.0/ds_license.lic
	set -x ARM_PRODUCT_DEF /opt/arm/developmentstudio-2022.0/sw/mappings/gold.elmap
	set PATH $PATH /opt/arm/developmentstudio-2022.0/bin/
end
