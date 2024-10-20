#ifndef STUDYSETUP_H
#define STUDYSETUP_H

#include <QObject>
#include <QAbstractItemModel>
#include <QTimer>

#include "connection.h"

class StudySetup : public Connection
{
    Q_OBJECT
public:
    explicit StudySetup(QObject *parent = nullptr);
    ~StudySetup();
public slots:
    void onButtonClicked(); //DEBUG FUNCTION
    void start();
    void loadData(QAbstractItemModel *model);
    void cancel();
signals:
    void studyFinished();
    void started();
    void canceled();
private:
    void setMotors(int SliderValue);
    void stopStudy();
    void run();

    QList<float> durations;
    QList<int> powers;
    QTimer* timer;
    int arrIdx = 0;
    int numOfMotors = 4;
};

#endif // STUDYSETUP_H
