#ifndef STUDYSETUP_H
#define STUDYSETUP_H

#include <QObject>

class StudySetup : public QObject
{
    Q_OBJECT
public:
    explicit StudySetup(QObject *parent = nullptr);
public slots:
    void onButtonClicked();
private:
    QList<float> durations;
    QList<int> powers;
};

#endif // STUDYSETUP_H
