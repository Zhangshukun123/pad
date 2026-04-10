.class public Lcom/ayma/commonerp/util/ScannerInterface;
.super Ljava/lang/Object;
.source "ScannerInterface.java"


# static fields
.field public static final KEY_BARCODE_ENABLE_ACTION:Ljava/lang/String; = "android.intent.action.BARCODESCAN"

.field public static final KEY_BARCODE_STARTSCAN_ACTION:Ljava/lang/String; = "android.intent.action.BARCODESTARTSCAN"

.field public static final KEY_BARCODE_STOPSCAN_ACTION:Ljava/lang/String; = "android.intent.action.BARCODESTOPSCAN"

.field public static final KEY_BEEP_ACTION:Ljava/lang/String; = "android.intent.action.BEEP"

.field public static final KEY_CHARSET_ACTION:Ljava/lang/String; = "android.intent.actionCHARSET"

.field public static final KEY_CONTINUCESCAN_ACTION:Ljava/lang/String; = "android.intent.action.CONTINUCESCAN"

.field public static final KEY_DELELCTED_ACTION:Ljava/lang/String; = "android.intent.action.DELELCTED"

.field public static final KEY_FAILUREBEEP_ACTION:Ljava/lang/String; = "android.intent.action.FAILUREBEEP"

.field public static final KEY_FAILUREBROADCAST_ACTION:Ljava/lang/String; = "android.intent.action.FAILUREBROADCAST"

.field public static final KEY_FILTERCHARACTER_ACTION:Ljava/lang/String; = "android.intent.action.FILTERCHARACTER"

.field public static final KEY_INTERVALTIME_ACTION:Ljava/lang/String; = "android.intent.action.INTERVALTIME"

.field public static final KEY_LIGHT_ACTION:Ljava/lang/String; = "android.intent.action.LIGHT"

.field public static final KEY_LOCK_SCAN_ACTION:Ljava/lang/String; = "android.intent.action.BARCODELOCKSCANKEY"

.field public static final KEY_OUTPUT_ACTION:Ljava/lang/String; = "android.intent.action.BARCODEOUTPUT"

.field public static final KEY_POWER_ACTION:Ljava/lang/String; = "android.intent.action.POWER"

.field public static final KEY_PREFIX_ACTION:Ljava/lang/String; = "android.intent.action.PREFIX"

.field public static final KEY_RESET_ACTION:Ljava/lang/String; = "android.intent.action.RESET"

.field public static final KEY_SETMAXMULTIREADCOUNT_ACTION:Ljava/lang/String; = "android.intent.action.MAXMULTIREADCOUNT"

.field public static final KEY_SHOWICON_ACTION:Ljava/lang/String; = "android.intent.action.SHOWAPPICON"

.field public static final KEY_SHOWISCANUI:Ljava/lang/String; = "com.android.auto.iscan.show_setting_ui"

.field public static final KEY_SHOWNOTICEICON_ACTION:Ljava/lang/String; = "android.intent.action.SHOWNOTICEICON"

.field public static final KEY_SUFFIX_ACTION:Ljava/lang/String; = "android.intent.action.SUFFIX"

.field public static final KEY_TERMINATOR_ACTION:Ljava/lang/String; = "android.intent.TERMINATOR"

.field public static final KEY_TIMEOUT_ACTION:Ljava/lang/String; = "android.intent.action.TIMEOUT"

.field public static final KEY_TRIMLEFT_ACTION:Ljava/lang/String; = "android.intent.action.TRIMLEFT"

.field public static final KEY_TRIMRIGHT_ACTION:Ljava/lang/String; = "android.intent.action.TRIMRIGHT"

.field public static final KEY_UNLOCK_SCAN_ACTION:Ljava/lang/String; = "android.intent.action.BARCODEUNLOCKSCANKEY"

.field public static final KEY_VIBRATE_ACTION:Ljava/lang/String; = "android.intent.action.VIBRATE"

.field public static final SCANKEY_CONFIG_ACTION:Ljava/lang/String; = "android.intent.action.scankeyConfig"

.field static final SET_CFG_WAKEUP_ANYKEY:Ljava/lang/String; = "com.android.set.cfg.wakeup.anykey"

.field static final SET_INSTALL_PACKAGE:Ljava/lang/String; = "com.android.set.install.package"

.field static final SET_INSTALL_PACKAGE_EXTRA_APK_PATH:Ljava/lang/String; = "com.android.set.install.packege.extra.apk.path"

.field static final SET_INSTALL_PACKAGE_EXTRA_TIPS_FORMAT:Ljava/lang/String; = "com.android.set.install.packege.extra.tips.format"

.field static final SET_INSTALL_PACKAGE_WITH_SILENCE:Ljava/lang/String; = "com.android.set.install.packege.with.silence"

.field static final SET_KEYBOARD_CHANGE:Ljava/lang/String; = "com.android.disable.keyboard.change"

.field static final SET_SCREEN_LOCK:Ljava/lang/String; = "com.android.set.screen_lock"

.field static final SET_SIMULATION_KEYBOARD:Ljava/lang/String; = "com.android.simulation.keyboard"

.field static final SET_SIMULATION_KEYBOARD_STRING:Ljava/lang/String; = "com.android.simulation.keyboard.string"

.field static final SET_STATUSBAR_EXPAND:Ljava/lang/String; = "com.android.set.statusbar_expand"

.field static final SET_SYSTEM_TIME:Ljava/lang/String; = "com.android.set.system.time"

.field static final SET_UNINSTALL_PACKAGE:Ljava/lang/String; = "com.android.set.uninstall.package"

.field static final SET_USB_DEBUG:Ljava/lang/String; = "com.android.set.usb_debug"

.field private static androidjni:Lcom/ayma/commonerp/util/ScannerInterface;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public SetErrorBroadCast(Z)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FAILUREBROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public ShowUI()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.auto.iscan.show_setting_ui"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public addPrefix(Ljava/lang/String;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PREFIX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public addSuffix(Ljava/lang/String;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SUFFIX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODESCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public continceScan(Z)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CONTINUCESCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public enableAddKeyValue(I)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.TERMINATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public enableFailurePlayBeep(Z)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FAILUREBEEP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public enablePlayBeep(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BEEP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public enablePlayVibrate(Z)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIBRATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public filterCharacter(Ljava/lang/String;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FILTERCHARACTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public interceptTrimleft(I)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TRIMLEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public interceptTrimright(I)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TRIMRIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public intervalSet(I)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INTERVALTIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public lightSet(Z)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public lockScanKey()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODELOCKSCANKEY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODESCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public resultScan()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public scan_start()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODESTARTSCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public scan_stop()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODESTOPSCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setOutputMode(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODEOUTPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public timeOutSet(I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public unlockScanKey()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BARCODEUNLOCKSCANKEY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/ayma/commonerp/util/ScannerInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
