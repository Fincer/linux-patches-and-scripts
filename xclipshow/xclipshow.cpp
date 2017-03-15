#include <QApplication>
#include <QTimer>
#include <QClipboard>
#include <QMimeData>
#include <QDebug>
#include <QStringList>

class App: public QObject {
    Q_OBJECT
private:
    void main();
public:
    App(): QObject() { }
public slots:
    void qtmain() { main(); emit finished(); }
signals:
    void finished();
};

void App::main() {
    QClipboard *clip = QApplication::clipboard();

    for(QString& formatName: clip->mimeData()->formats()) {
        std::string s;
        s = formatName.toStdString();

        QByteArray arr = clip->mimeData()->data(formatName);
        printf("name=%s, size=%d: ", s.c_str(), arr.size());

        for(int i = 0; i < arr.size(); i++) {
            printf("%02x ", (unsigned char) arr.at(i));
        }

        printf("\n");
    }
}

int main(int argc, char **argv) {
    QApplication app(argc, argv);
    App *task = new App();
    QObject::connect(task, SIGNAL(finished()), & app, SLOT(quit()));
    QTimer::singleShot(0, task, SLOT(qtmain()));
    return app.exec();
}

#include "xclipshow.moc"