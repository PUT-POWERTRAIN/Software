#include "studysetup.h"
#include <QDebug>

StudySetup::StudySetup(QObject *parent) : Connection(parent){
    timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, &StudySetup::run);
    changeMotorControlIPandPort(12345, "127.0.0.1");
}

StudySetup::~StudySetup(){
    delete timer;
}

void StudySetup::start(){
    emit started();
    run();
}

void StudySetup::onButtonClicked(){
    qDebug() << "Button was clicked!";
}

void StudySetup::run(){
    if(arrIdx >= powers.length()) {
        qDebug() << "Study measure was finished.";
        stopStudy();
        emit studyFinished();
        return;
    }
    int power = powers[arrIdx];
    float duration = durations[arrIdx];
    ++arrIdx;
    setMotors(power);
    sendUdpMessage();
    timer->start(duration * 1000);

}

void StudySetup::stopStudy(){
    timer->stop();
    arrIdx = 0;
    setMotors(0);
    sendUdpMessage();
}

void StudySetup::cancel(){
    qDebug() << "Study measure was canceled.";
    emit canceled();
    stopStudy();
}

void StudySetup::setMotors(int sliderValue){
    qDebug("elo");
    int value = 1000 + ((2000 - 1000) * sliderValue) / 100;
    for(int motorNumber = 0; motorNumber < numOfMotors; ++motorNumber){
        motorSignals[motorNumber]=value;
    }
}

void StudySetup::loadData(QAbstractItemModel *model)
{
    int rowCount = model->rowCount();  // Number of rows

    for (int row = 0; row < rowCount; ++row) {
        QModelIndex index = model->index(row, 0);

        // Retrieve the data for the custom roles
        QVariant powerData = model->data(index, 0);
        QVariant durationData = model->data(index, 1);

        // Process the data
        powers.push_back(powerData.toInt());
        durations.push_back(durationData.toFloat());
    }
}
