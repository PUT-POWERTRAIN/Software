#include "studysetup.h"

#include <QDebug>

StudySetup::StudySetup(QObject *parent) : QObject(parent)
{
}

void StudySetup::onButtonClicked()
{
    qDebug() << "Button was clicked!";
}
