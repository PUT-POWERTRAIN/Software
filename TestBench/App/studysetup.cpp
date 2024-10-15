#include "studysetup.h"

#include <QDebug>

StudySetup::StudySetup(QObject *parent) : QObject(parent)
{
}

void StudySetup::onButtonClicked()
{
    qDebug() << "Button was clicked!";
}

void StudySetup::loadData(QAbstractItemModel *model)
{
    auto idx = model->index(0, 0);
    auto idx2 = model->index(0, 1);
    if (model) {
        qDebug() << "Element 1 is " << model->rowCount() <<  model->columnCount();
    } else {
        qDebug() << "Model is null!";
    }
}
