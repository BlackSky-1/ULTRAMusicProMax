ui_print "- Запуск customize.sh скрипт"

ui_print "*******************************"
ui_print "*    UltaMusicProPremium   *"
ui_print "*******************************"         

VERSION=$(grep 'version=' $MODPATH/module.prop)
ui_print "- Установка $VERSION"

REPLACE_EXAMPLE="/system/app/Youtube /system/priv-app/SystemUI /system/priv-app/Settings /system/framework"

# Construct your own replacelist here

REPLACE=""
# Permissions

set_permissions() {
    ui_print "- Установка разрешений 
    для папок и файлов в system/ и system/vendor"
    for i in $(\ls $MODPATH/system); do
        set_perm $MODPATH/system/$i 0 0 0755 0644    
    done    
    for i in $(\ls $MODPATH/system/vendor); do
        set_perm $MODPATH/system/vendor/$i 0 0 0755 0644    
    done
}

set_permissions

ui_print "- Конец выдачи разрешений скрипт"
