TARGET = ru.alexkdeveloper.radio

QT += multimedia

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    rpm/ru.alexkdeveloper.radio.spec \
    qml/pages/boom.wav \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.alexkdeveloper.radio.ts \
    translations/ru.alexkdeveloper.radio-ru.ts \
