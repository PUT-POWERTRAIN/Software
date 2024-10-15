#ifndef STUDYSETUP_H
#define STUDYSETUP_H

#include <QObject>
#include <QAbstractItemModel>

class StudySetup : public QObject
{
    Q_OBJECT
public:
    explicit StudySetup(QObject *parent = nullptr);
public slots:
    void onButtonClicked();
    void loadData(QAbstractItemModel *model);
signals:
    void studyFinished();
private:
    QList<float> durations;
    QList<int> powers;
    float curr_duration;
    int curr_power;
};

#endif // STUDYSETUP_H
