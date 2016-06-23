#-------------------------------------------------
#
# Project created by QtCreator 2014-10-30T22:19:03
#
#-------------------------------------------------

QT       += core
QT       -= gui
QT       += network

TARGET = demo1
CONFIG   += console
CONFIG   -= app_bundle
unix:CONFIG += staticlib

TEMPLATE = app

SOURCES += \
    demo1.cpp

# Location of SMTP Library
unix:SMTP_LIBRARY_LOCATION = $$PWD/../../../build-SMTPEmail-Desktop-Debug
win32:SMTP_LIBRARY_LOCATION = $$PWD/../../../build-SMTPEmail-Desktop_Qt_5_6_1_MSVC2015_64bit-Debug

win32:CONFIG(release, debug|release): LIBS += -L$$SMTP_LIBRARY_LOCATION/release/ -lSMTPEmail
else:win32:CONFIG(debug, debug|release): LIBS += -L$$SMTP_LIBRARY_LOCATION/debug/ -lSMTPEmail
else:unix: LIBS += -L$$SMTP_LIBRARY_LOCATION -lSMTPEmail

INCLUDEPATH += $$SMTP_LIBRARY_LOCATION
DEPENDPATH += $$SMTP_LIBRARY_LOCATION
