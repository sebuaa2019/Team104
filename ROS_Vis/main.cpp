#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QtGui/QGuiApplication>
#include <QtCore/QDir>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQuickView viewer;

#ifdef Q_OS_WIN
    QString extraImportPath(QStringLiteral("%1/../%2"));
#else
    QString extraImportPath(QStringLiteral("%1/../../../%2"));
#endif
    viewer.engine()->addImportPath(extraImportPath.arg(QGuiApplication::applicationDirPath(),
                                      QString::fromLatin1("qml")));

    viewer.setSource(QUrl("qrc:/Cup.qml"));

    viewer.setTitle(QStringLiteral("Tycho crater on the Moon (height exaggerated)"));
    viewer.setResizeMode(QQuickView::SizeRootObjectToView);
    viewer.show();

    QQmlApplicationEngine engine;
    engine.addImportPath(":/imports");
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
