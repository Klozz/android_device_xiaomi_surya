#!/system/bin/sh
# set a couple of props, depending on device

load_surya()
{
    resetprop "ro.product.name" "surya"
    resetprop "ro.product.model" "Poco X3 NFC (M2007J20CG)"
}

load_karna()
{
    resetprop "ro.product.name" "karna"
    resetprop "ro.product.model" "Poco X3 (M2007J20CI)"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_surya;
        ;;
    "INDIA")
        load_karna;
        ;;
    *)
        load_surya;
        ;;
esac

exit 0;
