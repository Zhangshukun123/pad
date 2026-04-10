.class Lcom/unitech/api/app/AppManagementCtrl$4;
.super Ljava/lang/Object;
.source "AppManagementCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/app/AppManagementCtrl;->installStreamedApp(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/app/AppManagementCtrl;

.field final synthetic val$apkFilePath:Ljava/lang/String;

.field final synthetic val$finalFis:Ljava/io/FileInputStream;

.field final synthetic val$writeSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/unitech/api/app/AppManagementCtrl;Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$writeSide",
            "val$finalFis",
            "val$apkFilePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->this$0:Lcom/unitech/api/app/AppManagementCtrl;

    iput-object p2, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    iput-object p4, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$apkFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 512
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 519
    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 520
    :goto_0
    iget-object v4, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 524
    invoke-virtual {v1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    if-nez v3, :cond_2

    .line 530
    new-instance v0, Lcom/unitech/api/file/helper/FileCtrlHelper;

    invoke-static {}, Lcom/unitech/api/app/AppManagementCtrl;->access$700()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/unitech/api/file/helper/FileCtrlHelper;-><init>(Landroid/content/Context;)V

    .line 531
    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$apkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unitech/api/file/helper/FileCtrlHelper;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 532
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 535
    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 543
    :try_start_2
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 552
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 537
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 543
    :try_start_5
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 552
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    .line 543
    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    if-eqz v2, :cond_6

    .line 544
    iget-object v2, p0, Lcom/unitech/api/app/AppManagementCtrl$4;->val$finalFis:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v2

    .line 547
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    if-eqz v1, :cond_7

    .line 552
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 555
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 557
    :cond_7
    :goto_7
    throw v0
.end method
