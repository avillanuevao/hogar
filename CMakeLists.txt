cmake_minimum_required(VERSION 3.16)

project(hogar VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(apphogar
    main.cpp
)

qt_add_qml_module(apphogar
    URI hogar
    VERSION 1.0
    QML_FILES
        res/font/Example-Map.js
        res/font/Example.ttf
        res/ui/util/materialIcons/MaterialIcon.qml
        res/ui/util/materialIcons/MaterialLoader.qml
        res/ui/MainWindow.qml
    RESOURCES
        res/ui/util/materialIcons/qmldir
        QML_FILES res/ui/util/components/RoomCard.qml
        QML_FILES res/ui/util/components/ToggleButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(apphogar PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.apphogar
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apphogar
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS apphogar
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
