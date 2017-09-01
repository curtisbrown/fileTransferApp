#ifndef APPCODE_H
#define APPCODE_H

#include <QObject>

class AppCode : public QObject
{
    Q_OBJECT
public:
    explicit AppCode(QObject *parent = nullptr);

signals:

public slots:
};

#endif // APPCODE_H