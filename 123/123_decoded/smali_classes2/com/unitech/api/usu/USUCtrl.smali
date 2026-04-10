.class public Lcom/unitech/api/usu/USUCtrl;
.super Ljava/lang/Object;
.source "USUCtrl.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static Instance:Lcom/unitech/api/usu/USUCtrl;


# instance fields
.field private final API_CHANGE_TO_RAW_FORMAT:Ljava/lang/String;

.field public final API_CHANGE_TO_RAW_FORMAT_REPLY:Ljava/lang/String;

.field private final API_CHANGE_TO_SSI_FORMAT:Ljava/lang/String;

.field public final API_CHANGE_TO_SSI_FORMAT_REPLY:Ljava/lang/String;

.field public final API_DATA:Ljava/lang/String;

.field public final API_DATAALL:Ljava/lang/String;

.field public final API_DATABYTE:Ljava/lang/String;

.field public final API_DATABYTELENGTH:Ljava/lang/String;

.field public final API_DATALENGTH:Ljava/lang/String;

.field public final API_DATA_CODETYPE:Ljava/lang/String;

.field private final API_EXPORT_SETTINGS:Ljava/lang/String;

.field public final API_EXPORT_SETTINGS_REPLY:Ljava/lang/String;

.field private final API_GET_AUTO_CONNECTION:Ljava/lang/String;

.field public final API_GET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

.field private final API_GET_BATTERY:Ljava/lang/String;

.field public final API_GET_BATTERY_REPLY:Ljava/lang/String;

.field private final API_GET_BLUETOOTH_SIGNAL_CHECKING_LEVEL:Ljava/lang/String;

.field public final API_GET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

.field private final API_GET_CONFIG:Ljava/lang/String;

.field public final API_GET_CONFIG_REPLY:Ljava/lang/String;

.field private final API_GET_CONNECTED_SCANNERS:Ljava/lang/String;

.field private final API_GET_DATA_ACK:Ljava/lang/String;

.field public final API_GET_DATA_ACK_REPLY:Ljava/lang/String;

.field private final API_GET_DATA_TERMINATOR:Ljava/lang/String;

.field public final API_GET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

.field private final API_GET_FORMAT:Ljava/lang/String;

.field public final API_GET_FORMAT_REPLY:Ljava/lang/String;

.field private final API_GET_PAIRING_BARCODE:Ljava/lang/String;

.field public final API_GET_PAIRING_BARCODE_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_BLUETOOTH_MAC:Ljava/lang/String;

.field public final API_GET_SCANNER_BLUETOOTH_MAC_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_BLUETOOTH_NAME:Ljava/lang/String;

.field public final API_GET_SCANNER_BLUETOOTH_NAME_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_FIRMWARE_VERSION:Ljava/lang/String;

.field public final API_GET_SCANNER_FIRMWARE_VERSION_REPLY:Ljava/lang/String;

.field private final API_GET_SCANNER_SERIAL_NUMBER:Ljava/lang/String;

.field public final API_GET_SCANNER_SERIAL_NUMBER_REPLY:Ljava/lang/String;

.field private final API_GET_TARGET_SCANNER_STATUS:Ljava/lang/String;

.field public final API_GET_TARGET_SCANNER_STATUS_REPLY:Ljava/lang/String;

.field private final API_GET_TRIG:Ljava/lang/String;

.field public final API_GET_TRIG_REPLY:Ljava/lang/String;

.field private final API_IMPORT_SETTINGS:Ljava/lang/String;

.field public final API_IMPORT_SETTINGS_REPLY:Ljava/lang/String;

.field private final API_RESET_SETTINGS:Ljava/lang/String;

.field private final API_SCANNER_TRIGGER_START:Ljava/lang/String;

.field private final API_SCANNER_TRIGGER_STOP:Ljava/lang/String;

.field private final API_SET_AUTO_CONNECTION:Ljava/lang/String;

.field public final API_SET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

.field private final API_SET_BLUETOOTH_SIGNAL_CHECKING_LEVEL:Ljava/lang/String;

.field public final API_SET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

.field private final API_SET_CONFIG:Ljava/lang/String;

.field public final API_SET_CONFIG_REPLY:Ljava/lang/String;

.field private final API_SET_CONNECTED_SCANNER:Ljava/lang/String;

.field private final API_SET_DATA_ACK:Ljava/lang/String;

.field public final API_SET_DATA_ACK_REPLY:Ljava/lang/String;

.field private final API_SET_DATA_TERMINATOR:Ljava/lang/String;

.field public final API_SET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

.field private final API_SET_INDICATOR:Ljava/lang/String;

.field public final API_SET_INDICATOR_REPLY:Ljava/lang/String;

.field private final API_SET_TRIG:Ljava/lang/String;

.field public final API_SET_TRIG_REPLY:Ljava/lang/String;

.field public final API_START_DECODE_REPLY:Ljava/lang/String;

.field public final API_STOP_DECODE_REPLY:Ljava/lang/String;

.field public final API_TARGET_SCANNER:Ljava/lang/String;

.field private final API_UNPAIR_CURRENT_SCANNER:Ljava/lang/String;

.field public final API_UNPAIR_REPLY:Ljava/lang/String;

.field private final API_UPLOAD_ALL_SETTINGS:Ljava/lang/String;

.field public final API_UPLOAD_ALL_SETTINGS_REPLY:Ljava/lang/String;

.field final DEFAULT_FILE_PATH:Ljava/lang/String;

.field private IsStartCheckTimeout:Z

.field private IsWaitingForResponse:Z

.field final TimeOutForReceiveBroadcastAfterSentCommand:I

.field context:Landroid/content/Context;

.field private lastResultCode:I

.field private lastResultMessage:Ljava/lang/String;

.field newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field packageName:Ljava/lang/String;

.field passcode:Ljava/lang/String;

.field public replyQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private responseBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "passcode",
            "context"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 136
    iput v0, p0, Lcom/unitech/api/usu/USUCtrl;->TimeOutForReceiveBroadcastAfterSentCommand:I

    const-string v0, "unitech.scanservice.bluetooth.get_pairing_barcode_reply"

    .line 142
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_PAIRING_BARCODE_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_target_scanner_reply"

    .line 143
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_TARGET_SCANNER_STATUS_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.target_scanner_callback"

    .line 145
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_TARGET_SCANNER:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.unpair_reply"

    .line 147
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_UNPAIR_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_sn_reply"

    .line 148
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_SERIAL_NUMBER_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_name_reply"

    .line 149
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_BLUETOOTH_NAME_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_address_reply"

    .line 150
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_BLUETOOTH_MAC_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_fw_reply"

    .line 151
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_FIRMWARE_VERSION_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_battery_reply"

    .line 152
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_BATTERY_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_trig_reply"

    .line 153
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_TRIG_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_trig_reply"

    .line 154
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_TRIG_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.start_decode_reply"

    .line 155
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_START_DECODE_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.stop_decode_reply"

    .line 156
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_STOP_DECODE_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_ack_reply"

    .line 157
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_DATA_ACK_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_ack_reply"

    .line 158
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_DATA_ACK_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_auto_conn_reply"

    .line 159
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_auto_conn_reply"

    .line 160
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_AUTO_CONNECTION_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_config_reply"

    .line 161
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_CONFIG_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_config_reply"

    .line 162
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_CONFIG_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_bt_signal_checking_level_reply"

    .line 163
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_bt_signal_checking_level_reply"

    .line 164
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_BLUETOOTH_SIGNAL_CHECKING_LEVEL_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_data_terminator_reply"

    .line 165
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_data_terminator_reply"

    .line 166
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_DATA_TERMINATOR_REPLY:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.changeToSSI_reply"

    .line 167
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_CHANGE_TO_SSI_FORMAT_REPLY:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.changeToRAW_reply"

    .line 168
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_CHANGE_TO_RAW_FORMAT_REPLY:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.getFormat_reply"

    .line 169
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_FORMAT_REPLY:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.dataCodeType"

    .line 171
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_DATA_CODETYPE:Ljava/lang/String;

    const-string v0, "unitech.scanservice.data"

    .line 172
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_DATA:Ljava/lang/String;

    const-string v0, "unitech.scanservice.datalength"

    .line 173
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_DATALENGTH:Ljava/lang/String;

    const-string v0, "unitech.scanservice.databyte"

    .line 174
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_DATABYTE:Ljava/lang/String;

    const-string v0, "unitech.scanservice.databytelength"

    .line 175
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_DATABYTELENGTH:Ljava/lang/String;

    const-string v0, "unitech.scanservice.dataall"

    .line 176
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_DATAALL:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_indicator_reply"

    .line 178
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_INDICATOR_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.export_settings_reply"

    .line 179
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_EXPORT_SETTINGS_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.import_settings_reply"

    .line 180
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_IMPORT_SETTINGS_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.upload_all_settings_reply"

    .line 181
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_UPLOAD_ALL_SETTINGS_REPLY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_target_scanner"

    .line 183
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_TARGET_SCANNER_STATUS:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_pairing_barcode"

    .line 185
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_PAIRING_BARCODE:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_scanners"

    .line 187
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_CONNECTED_SCANNERS:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_scanner"

    .line 189
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_CONNECTED_SCANNER:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.unpair"

    .line 191
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_UNPAIR_CURRENT_SCANNER:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_sn"

    .line 193
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_SERIAL_NUMBER:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_name"

    .line 195
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_BLUETOOTH_NAME:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_address"

    .line 197
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_BLUETOOTH_MAC:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_fw"

    .line 199
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_SCANNER_FIRMWARE_VERSION:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_battery"

    .line 201
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_BATTERY:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_trig"

    .line 203
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_TRIG:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_trig"

    .line 205
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_TRIG:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.start_decode"

    .line 208
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SCANNER_TRIGGER_START:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.stop_decode"

    .line 211
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SCANNER_TRIGGER_STOP:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_ack"

    .line 216
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_DATA_ACK:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_ack"

    .line 217
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_DATA_ACK:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_auto_conn"

    .line 222
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_AUTO_CONNECTION:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_auto_conn"

    .line 223
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_AUTO_CONNECTION:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_config"

    .line 225
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_CONFIG:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_config"

    .line 226
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_CONFIG:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_indicator"

    .line 229
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_INDICATOR:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_bt_signal_checking_level"

    .line 231
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_BLUETOOTH_SIGNAL_CHECKING_LEVEL:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_bt_signal_checking_level"

    .line 232
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_BLUETOOTH_SIGNAL_CHECKING_LEVEL:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.get_data_terminator"

    .line 233
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_DATA_TERMINATOR:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.set_data_terminator"

    .line 234
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_SET_DATA_TERMINATOR:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.changeToSSI"

    .line 236
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_CHANGE_TO_SSI_FORMAT:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.changeToRAW"

    .line 237
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_CHANGE_TO_RAW_FORMAT:Ljava/lang/String;

    const-string v0, "com.unitech.bluetooth.getFormat"

    .line 238
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_GET_FORMAT:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.export_settings"

    .line 242
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_EXPORT_SETTINGS:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.import_settings"

    .line 243
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_IMPORT_SETTINGS:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.reset_settings"

    .line 244
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_RESET_SETTINGS:Ljava/lang/String;

    const-string v0, "unitech.scanservice.bluetooth.upload_all_settings"

    .line 245
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->API_UPLOAD_ALL_SETTINGS:Ljava/lang/String;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultCode:I

    const-string v0, "/sdcard/Unitech/USU/USU.conf"

    .line 1339
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->DEFAULT_FILE_PATH:Ljava/lang/String;

    .line 297
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->replyQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 298
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl;->packageName:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/unitech/api/usu/USUCtrl;->passcode:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/unitech/api/usu/USUCtrl;->IsStartCheckTimeout:Z

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/unitech/api/usu/USUCtrl;->IsWaitingForResponse:Z

    .line 303
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 304
    new-instance p2, Lcom/unitech/api/usu/USUCtrl$1;

    invoke-direct {p2, p0}, Lcom/unitech/api/usu/USUCtrl$1;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000(Lcom/unitech/api/usu/USUCtrl;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/unitech/api/usu/USUCtrl;->createSendBundle([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/unitech/api/usu/USUCtrl;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultMessage:Ljava/lang/String;

    return-object p1
.end method

.method private varargs createSendBundle([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 1613
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1614
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->passcode:Ljava/lang/String;

    const-string v1, "passcode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/unitech/api/usu/USUCtrl;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "passcode",
            "context"
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/unitech/api/usu/USUCtrl;->Instance:Lcom/unitech/api/usu/USUCtrl;

    if-nez v0, :cond_1

    .line 312
    const-class v1, Lcom/unitech/api/usu/USUCtrl;

    monitor-enter v1

    .line 313
    :try_start_0
    sget-object v0, Lcom/unitech/api/usu/USUCtrl;->Instance:Lcom/unitech/api/usu/USUCtrl;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/unitech/api/usu/USUCtrl;

    invoke-direct {v0, p0, p1, p2}, Lcom/unitech/api/usu/USUCtrl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/usu/USUCtrl;->Instance:Lcom/unitech/api/usu/USUCtrl;

    .line 315
    new-instance p0, Lcom/unitech/api/usu/USUCtrlObervable;

    invoke-direct {p0, p2}, Lcom/unitech/api/usu/USUCtrlObervable;-><init>(Landroid/content/Context;)V

    .line 316
    sget-object p1, Lcom/unitech/api/usu/USUCtrl;->Instance:Lcom/unitech/api/usu/USUCtrl;

    invoke-virtual {p0, p1}, Lcom/unitech/api/usu/USUCtrlObervable;->addObserver(Ljava/util/Observer;)V

    .line 318
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 321
    :cond_1
    iput-object p1, v0, Lcom/unitech/api/usu/USUCtrl;->passcode:Ljava/lang/String;

    .line 322
    iput-object p0, v0, Lcom/unitech/api/usu/USUCtrl;->packageName:Ljava/lang/String;

    .line 323
    iput-object p2, v0, Lcom/unitech/api/usu/USUCtrl;->context:Landroid/content/Context;

    .line 325
    :goto_0
    sget-object p0, Lcom/unitech/api/usu/USUCtrl;->Instance:Lcom/unitech/api/usu/USUCtrl;

    return-object p0
.end method


# virtual methods
.method public AskScannerToUnpair()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$4;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$4;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 457
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public EnterIntoRawMode()V
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$25;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$25;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1245
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1249
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1247
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public EnterIntoSsiMode()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$24;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$24;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1211
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1215
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1213
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ExportSettings(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filepath"
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$28;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$28;-><init>(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1431
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1435
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1433
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetAutoConnection()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$16;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$16;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 903
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 907
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 905
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetDataACK()V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$14;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$14;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 826
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 830
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 828
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetPairingBarcode()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$2;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$2;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 382
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerBatteryLevel()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$9;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$9;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 642
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 644
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerBluetoothMacAddress()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$7;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$7;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 568
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 570
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerBluetoothName()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$6;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$6;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 531
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerBtSignalCheckingLevel()V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$20;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$20;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1067
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1069
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerDataTerminator()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$22;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$22;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1141
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1145
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1143
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerFirmwareVersion()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$8;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$8;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 605
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerSerialNumber()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$5;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$5;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 494
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 496
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerSymbologyConfiguration()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$18;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$18;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 981
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 985
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 983
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetScannerTriggerKey()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$10;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$10;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 679
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 681
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetTargetScanner()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$3;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$3;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 422
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ImportSettings(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filepath"
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$29;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$29;-><init>(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1526
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1530
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1528
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method declared-synchronized IsReponseTimeOut()Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    .line 1620
    :try_start_0
    iput-boolean v0, p0, Lcom/unitech/api/usu/USUCtrl;->IsStartCheckTimeout:Z

    .line 1621
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1622
    :cond_0
    iget-boolean v3, p0, Lcom/unitech/api/usu/USUCtrl;->IsStartCheckTimeout:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-wide/16 v5, 0x64

    .line 1625
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1627
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1629
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    long-to-double v5, v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    const-wide v7, 0x40cd4c0000000000L    # 15000.0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_0

    .line 1635
    iput-boolean v4, p0, Lcom/unitech/api/usu/USUCtrl;->IsStartCheckTimeout:Z

    const/4 v1, -0x1

    .line 1636
    iput v1, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultCode:I

    const-string v1, "Response timeout error"

    .line 1637
    iput-object v1, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultMessage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1638
    monitor-exit p0

    return v0

    .line 1641
    :cond_1
    :try_start_3
    iput v4, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultCode:I

    const-string v0, "Success"

    .line 1642
    iput-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultMessage:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1643
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ReceiveCurrentDataMode()V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$26;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$26;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1282
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1286
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1284
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ResetSettings()V
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$30;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$30;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1564
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1568
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1566
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SendACKIndicator(ZIZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "withACK",
            "beepTime",
            "vibrate",
            "ledColor"
        }
    .end annotation

    .line 1319
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/unitech/api/usu/USUCtrl$27;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/unitech/api/usu/USUCtrl$27;-><init>(Lcom/unitech/api/usu/USUCtrl;ZIZLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1332
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1336
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1334
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetAutoConnection(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enable"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$17;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$17;-><init>(Lcom/unitech/api/usu/USUCtrl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 942
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 946
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 944
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetDataACK(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enable"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$15;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$15;-><init>(Lcom/unitech/api/usu/USUCtrl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 865
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 869
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 867
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetScannerBtSignalCheckingLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$21;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$21;-><init>(Lcom/unitech/api/usu/USUCtrl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1104
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1108
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1106
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetScannerDataTerminator(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "terminator"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$23;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$23;-><init>(Lcom/unitech/api/usu/USUCtrl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1177
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1181
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1179
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetScannerSymbologyConfiguration(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "symbologyName",
            "value"
        }
    .end annotation

    .line 1011
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MSI"

    .line 1013
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, -0x1

    .line 1014
    iput p1, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultCode:I

    const-string p1, "Input Value Invalid"

    .line 1015
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultMessage:Ljava/lang/String;

    return-void

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/unitech/api/usu/USUCtrl$19;-><init>(Lcom/unitech/api/usu/USUCtrl;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1028
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1032
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1030
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public SetScannerTriggerKey(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enable"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$11;

    invoke-direct {v1, p0, p1}, Lcom/unitech/api/usu/USUCtrl$11;-><init>(Lcom/unitech/api/usu/USUCtrl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 717
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 721
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 719
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public StartDecode()V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$12;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$12;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 753
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public StopDecode()V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$13;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$13;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 788
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public UploadSettings()V
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unitech/api/usu/USUCtrl$31;

    invoke-direct {v1, p0}, Lcom/unitech/api/usu/USUCtrl$31;-><init>(Lcom/unitech/api/usu/USUCtrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1599
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1603
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1601
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changePasscode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passcode"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/unitech/api/usu/USUCtrl;->passcode:Ljava/lang/String;

    return-void
.end method

.method public getLastResultCode()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultCode:I

    return v0
.end method

.method public getLastResultMessage()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBundle()Landroid/os/Bundle;
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->replyQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->replyQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observable",
            "o"
        }
    .end annotation

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/unitech/api/usu/USUCtrl;->IsWaitingForResponse:Z

    .line 334
    check-cast p2, Landroid/os/Bundle;

    iput-object p2, p0, Lcom/unitech/api/usu/USUCtrl;->responseBundle:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 338
    :try_start_0
    iget-object p2, p0, Lcom/unitech/api/usu/USUCtrl;->replyQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 339
    iget-object p2, p0, Lcom/unitech/api/usu/USUCtrl;->replyQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/unitech/api/usu/USUCtrl;->responseBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 343
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unitech/api/usu/USUCtrl;->lastResultMessage:Ljava/lang/String;

    const-string v0, "USUCtrl"

    .line 344
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/unitech/api/usu/USUCtrl;->IsStartCheckTimeout:Z

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/unitech/api/usu/USUCtrl;->IsWaitingForResponse:Z

    return-void
.end method
