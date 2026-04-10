.class Lcom/unitech/api/usu/USUCtrlObervable;
.super Ljava/util/Observable;
.source "USUCtrl.java"


# instance fields
.field private final API_CHANGE_TO_RAW_FORMAT_REPLY:Ljava/lang/String;

.field private final API_CHANGE_TO_SSI_FORMAT_REPLY:Ljava/lang/String;

.field private final API_DATA:Ljava/lang/String;

.field private final API_DATAALL:Ljava/lang/String;

.field private final API_DATABYTE:Ljava/lang/String;

.field private final API_DATABYTELENGTH:Ljava/lang/String;

.field private final API_DATALENGTH:Ljava/lang/String;

.field private final API_DATA_CODETYPE:Ljava/lang/String;

.field private final API_EXPORT_SETTINGS_REPLY:Ljava/lang/String;

.field private final API_GET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

.field private final API_GET_BATTERY_REPLY:Ljava/lang/String;

.field private final API_GET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

.field private final API_GET_CONFIG_REPLY:Ljava/lang/String;

.field private final API_GET_DATA_ACK_REPLY:Ljava/lang/String;

.field private final API_GET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

.field private final API_GET_FORMAT_REPLY:Ljava/lang/String;

.field private final API_GET_PAIRING_BARCODE_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_BLUETOOTH_MAC_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_BLUETOOTH_NAME_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_FIRMWARE_VERSION_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_SERIAL_NUMBER_REPLY:Ljava/lang/String;

.field private final API_GET_TARGET_SCANNER_STATUS_REPLY:Ljava/lang/String;

.field private final API_GET_TRIG_REPLY:Ljava/lang/String;

.field private final API_IMPORT_SETTINGS_REPLY:Ljava/lang/String;

.field private final API_RESET_SETTINGS_REPLY:Ljava/lang/String;

.field private final API_SET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

.field private final API_SET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

.field private final API_SET_CONFIG_REPLY:Ljava/lang/String;

.field private final API_SET_DATA_ACK_REPLY:Ljava/lang/String;

.field private final API_SET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

.field private final API_SET_INDICATOR_REPLY:Ljava/lang/String;

.field private final API_SET_TRIG_REPLY:Ljava/lang/String;

.field private final API_START_DECODE_REPLY:Ljava/lang/String;

.field private final API_STOP_DECODE_REPLY:Ljava/lang/String;

.field private final API_TARGET_SCANNER:Ljava/lang/String;

.field private final API_UNPAIR_REPLY:Ljava/lang/String;

.field private final API_UPLOAD_ALL_SETTINGS_REPLY:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/util/Observable;-><init>()V

    const-string v2, "unitech.scanservice.bluetooth.get_pairing_barcode_reply"

    .line 30
    iput-object v2, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_PAIRING_BARCODE_REPLY:Ljava/lang/String;

    const-string v3, "unitech.scanservice.bluetooth.get_target_scanner_reply"

    .line 31
    iput-object v3, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_TARGET_SCANNER_STATUS_REPLY:Ljava/lang/String;

    const-string v4, "unitech.scanservice.bluetooth.target_scanner_callback"

    .line 33
    iput-object v4, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_TARGET_SCANNER:Ljava/lang/String;

    const-string v5, "unitech.scanservice.bluetooth.unpair_reply"

    .line 35
    iput-object v5, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_UNPAIR_REPLY:Ljava/lang/String;

    const-string v6, "unitech.scanservice.bluetooth.get_sn_reply"

    .line 36
    iput-object v6, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_SCANNER_SERIAL_NUMBER_REPLY:Ljava/lang/String;

    const-string v7, "unitech.scanservice.bluetooth.get_name_reply"

    .line 37
    iput-object v7, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_SCANNER_BLUETOOTH_NAME_REPLY:Ljava/lang/String;

    const-string v8, "unitech.scanservice.bluetooth.get_address_reply"

    .line 38
    iput-object v8, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_SCANNER_BLUETOOTH_MAC_REPLY:Ljava/lang/String;

    const-string v9, "unitech.scanservice.bluetooth.get_fw_reply"

    .line 39
    iput-object v9, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_SCANNER_FIRMWARE_VERSION_REPLY:Ljava/lang/String;

    const-string v10, "unitech.scanservice.bluetooth.get_battery_reply"

    .line 40
    iput-object v10, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_BATTERY_REPLY:Ljava/lang/String;

    const-string v11, "unitech.scanservice.bluetooth.get_trig_reply"

    .line 41
    iput-object v11, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_TRIG_REPLY:Ljava/lang/String;

    const-string v12, "unitech.scanservice.bluetooth.set_trig_reply"

    .line 42
    iput-object v12, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_TRIG_REPLY:Ljava/lang/String;

    const-string v13, "unitech.scanservice.bluetooth.start_decode_reply"

    .line 43
    iput-object v13, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_START_DECODE_REPLY:Ljava/lang/String;

    const-string v14, "unitech.scanservice.bluetooth.stop_decode_reply"

    .line 44
    iput-object v14, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_STOP_DECODE_REPLY:Ljava/lang/String;

    const-string v15, "unitech.scanservice.bluetooth.get_ack_reply"

    .line 45
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_DATA_ACK_REPLY:Ljava/lang/String;

    move-object/from16 v16, v15

    const-string v15, "unitech.scanservice.bluetooth.set_ack_reply"

    .line 46
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_DATA_ACK_REPLY:Ljava/lang/String;

    move-object/from16 v17, v15

    const-string v15, "unitech.scanservice.bluetooth.get_auto_conn_reply"

    .line 47
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

    move-object/from16 v18, v15

    const-string v15, "unitech.scanservice.bluetooth.set_auto_conn_reply"

    .line 48
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

    move-object/from16 v19, v15

    const-string v15, "unitech.scanservice.bluetooth.get_config_reply"

    .line 49
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_CONFIG_REPLY:Ljava/lang/String;

    move-object/from16 v20, v15

    const-string v15, "unitech.scanservice.bluetooth.set_config_reply"

    .line 50
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_CONFIG_REPLY:Ljava/lang/String;

    move-object/from16 v21, v15

    const-string v15, "unitech.scanservice.bluetooth.get_bt_signal_checking_level_reply"

    .line 51
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

    move-object/from16 v22, v15

    const-string v15, "unitech.scanservice.bluetooth.set_bt_signal_checking_level_reply"

    .line 52
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

    move-object/from16 v23, v15

    const-string v15, "unitech.scanservice.bluetooth.get_data_terminator_reply"

    .line 53
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

    move-object/from16 v24, v15

    const-string v15, "unitech.scanservice.bluetooth.set_data_terminator_reply"

    .line 54
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

    const-string v15, "com.unitech.bluetooth.changeToSSI_reply"

    .line 55
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_CHANGE_TO_SSI_FORMAT_REPLY:Ljava/lang/String;

    const-string v15, "com.unitech.bluetooth.changeToRAW_reply"

    .line 56
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_CHANGE_TO_RAW_FORMAT_REPLY:Ljava/lang/String;

    const-string v15, "com.unitech.bluetooth.getFormat_reply"

    .line 57
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_GET_FORMAT_REPLY:Ljava/lang/String;

    const-string v15, "com.unitech.bluetooth.dataCodeType"

    .line 59
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_DATA_CODETYPE:Ljava/lang/String;

    const-string v15, "unitech.scanservice.data"

    .line 60
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_DATA:Ljava/lang/String;

    const-string v15, "unitech.scanservice.datalength"

    .line 61
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_DATALENGTH:Ljava/lang/String;

    const-string v15, "unitech.scanservice.databyte"

    .line 62
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_DATABYTE:Ljava/lang/String;

    const-string v15, "unitech.scanservice.databytelength"

    .line 63
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_DATABYTELENGTH:Ljava/lang/String;

    const-string v15, "unitech.scanservice.dataall"

    .line 64
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_DATAALL:Ljava/lang/String;

    const-string v15, "unitech.scanservice.bluetooth.set_indicator_reply"

    .line 66
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_SET_INDICATOR_REPLY:Ljava/lang/String;

    const-string v15, "unitech.scanservice.bluetooth.export_settings_reply"

    .line 67
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_EXPORT_SETTINGS_REPLY:Ljava/lang/String;

    const-string v15, "unitech.scanservice.bluetooth.import_settings_reply"

    .line 68
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_IMPORT_SETTINGS_REPLY:Ljava/lang/String;

    const-string v15, "unitech.scanservice.bluetooth.reset_settings_reply"

    .line 69
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_RESET_SETTINGS_REPLY:Ljava/lang/String;

    const-string v15, "unitech.scanservice.bluetooth.upload_all_settings_reply"

    .line 70
    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->API_UPLOAD_ALL_SETTINGS_REPLY:Ljava/lang/String;

    .line 123
    new-instance v15, Lcom/unitech/api/usu/USUCtrlObervable$1;

    invoke-direct {v15, v0}, Lcom/unitech/api/usu/USUCtrlObervable$1;-><init>(Lcom/unitech/api/usu/USUCtrlObervable;)V

    iput-object v15, v0, Lcom/unitech/api/usu/USUCtrlObervable;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object v1, v0, Lcom/unitech/api/usu/USUCtrlObervable;->context:Landroid/content/Context;

    .line 74
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v15, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v15, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v15, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v15, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v15, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v15, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v15, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v15, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v15, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v15, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 88
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 89
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v18

    .line 90
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 91
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 92
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v21

    .line 93
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v22

    .line 94
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v23

    .line 95
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v2, v24

    .line 96
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.bluetooth.set_data_terminator_reply"

    .line 98
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.unitech.bluetooth.changeToSSI_reply"

    .line 99
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.unitech.bluetooth.changeToRAW_reply"

    .line 100
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.unitech.bluetooth.getFormat_reply"

    .line 101
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.unitech.bluetooth.dataCodeType"

    .line 102
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.data"

    .line 103
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.datalength"

    .line 104
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.databyte"

    .line 105
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.databytelength"

    .line 106
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.dataall"

    .line 107
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.bluetooth.set_indicator_reply"

    .line 108
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.bluetooth.export_settings_reply"

    .line 109
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.bluetooth.import_settings_reply"

    .line 110
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.bluetooth.reset_settings_reply"

    .line 111
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "unitech.scanservice.bluetooth.upload_all_settings_reply"

    .line 112
    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-ge v2, v3, :cond_0

    .line 114
    iget-object v2, v0, Lcom/unitech/api/usu/USUCtrlObervable;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v2, v0, Lcom/unitech/api/usu/USUCtrlObervable;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v15, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/usu/USUCtrlObervable;Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/unitech/api/usu/USUCtrlObervable;->sendChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method private sendChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/unitech/api/usu/USUCtrlObervable;->setChanged()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/unitech/api/usu/USUCtrlObervable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
