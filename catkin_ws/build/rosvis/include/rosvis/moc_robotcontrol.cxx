/****************************************************************************
** Meta object code from reading C++ file 'robotcontrol.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rosvis/include/rosvis/robotcontrol.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'robotcontrol.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_RobotControl[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      14,   13,   13,   13, 0x0a,
      35,   13,   13,   13, 0x0a,
      56,   13,   13,   13, 0x0a,
      77,   13,   13,   13, 0x0a,
      98,   13,   13,   13, 0x0a,
     119,   13,   13,   13, 0x0a,
     140,   13,   13,   13, 0x0a,
     163,   13,   13,   13, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_RobotControl[] = {
    "RobotControl\0\0on_yButton_clicked()\0"
    "on_xButton_clicked()\0on_bButton_clicked()\0"
    "on_aButton_clicked()\0on_lButton_clicked()\0"
    "on_rButton_clicked()\0on_buyButton_clicked()\0"
    "updatePic()\0"
};

void RobotControl::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RobotControl *_t = static_cast<RobotControl *>(_o);
        switch (_id) {
        case 0: _t->on_yButton_clicked(); break;
        case 1: _t->on_xButton_clicked(); break;
        case 2: _t->on_bButton_clicked(); break;
        case 3: _t->on_aButton_clicked(); break;
        case 4: _t->on_lButton_clicked(); break;
        case 5: _t->on_rButton_clicked(); break;
        case 6: _t->on_buyButton_clicked(); break;
        case 7: _t->updatePic(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData RobotControl::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject RobotControl::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_RobotControl,
      qt_meta_data_RobotControl, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &RobotControl::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *RobotControl::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *RobotControl::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_RobotControl))
        return static_cast<void*>(const_cast< RobotControl*>(this));
    return QDialog::qt_metacast(_clname);
}

int RobotControl::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
