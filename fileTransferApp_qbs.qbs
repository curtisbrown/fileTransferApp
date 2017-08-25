import qbs;

Project {
    name: "fileTransferApp_qbs";
    minimumQbsVersion: "1.7.0";
    references: [];

    Product {
        name: "app-fileTransferApp_qbs";
        type: "application";
        targetName: "fileTransferApp_qbs";
        cpp.rpaths: ["$ORIGIN", "$ORIGIN/lib"];
        cpp.cxxLanguageVersion: "c++11";
        Qt.core.resourcePrefix: "/";
        Qt.core.resourceSourceBase: sourceDirectory;
        Qt.core.resourceFileBaseName: "data_qmlfiles";

        Depends {
            name: "cpp";
        }
        Depends {
            name: "Qt";
            submodules: ["core", "gui", "network", "qml", "quick"];
        }
        Group {
            name: "C++ files";
            files: [
                "main.cpp",
            ];
        }
        Group {
            name: "Qml files";
            fileTags: "qt.core.resource_data";
            files: ["*.qml"];
        }
        Group {
            name: "Qrc";
            files: [
                "images.qrc"
            ];
        }
        Group {
            qbs.install: true;
            fileTagsFilter: product.type;
        }
    }
}
