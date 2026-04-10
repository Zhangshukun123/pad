.class public Lcom/vondear/rxtool/RxZipTool;
.super Ljava/lang/Object;
.source "RxZipTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/RxZipTool$CompressKeys;,
        Lcom/vondear/rxtool/RxZipTool$CompressStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 2

    .line 707
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 708
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, "UTF-8"

    .line 711
    :cond_0
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 716
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    .line 720
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 721
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/core/ZipFile;->setPassword([C)V

    .line 724
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object p2

    .line 726
    new-instance p3, Ljava/lang/Thread;

    new-instance v1, Lcom/vondear/rxtool/RxZipTool$1;

    invoke-direct {v1, p4, p2, p5, p0}, Lcom/vondear/rxtool/RxZipTool$1;-><init>(Landroid/os/Handler;Lnet/lingala/zip4j/progress/ProgressMonitor;ZLjava/io/File;)V

    invoke-direct {p3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 771
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    .line 772
    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;->setRunInThread(Z)V

    .line 773
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "Compressed files are not illegal, may be damaged."

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 775
    invoke-virtual {p0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static buildDestinationZipFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 559
    invoke-static {p1}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "."

    const/4 v2, 0x0

    const-string v3, ".zip"

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 563
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 568
    :cond_1
    invoke-static {p1}, Lcom/vondear/rxtool/RxZipTool;->createDestDirectoryIfNecessary(Ljava/lang/String;)V

    .line 569
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 576
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private static createDestDirectoryIfNecessary(Ljava/lang/String;)V
    .locals 3

    .line 589
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 595
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public static fileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 457
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "\u5f85\u538b\u7f29\u7684\u6587\u4ef6\u76ee\u5f55\uff1a"

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 465
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 467
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u76ee\u5f55\u4e0b\u5b58\u5728\u540d\u5b57\u4e3a:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip\u6253\u5305\u6587\u4ef6."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 469
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 470
    array-length p2, p1

    if-ge p2, v6, :cond_1

    goto :goto_2

    .line 473
    :cond_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 474
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x2800

    :try_start_1
    new-array v0, p0, [B

    const/4 v2, 0x0

    .line 476
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 478
    new-instance v4, Ljava/util/zip/ZipEntry;

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 481
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p1, v2

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 482
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 484
    :goto_1
    :try_start_2
    invoke-virtual {v5, v0, v3, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 485
    invoke-virtual {p2, v0, v3, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_8

    :catch_0
    move-exception p0

    move-object v1, v5

    goto :goto_7

    :cond_3
    const/4 v3, 0x1

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_7

    .line 471
    :cond_4
    :goto_2
    :try_start_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u91cc\u9762\u4e0d\u5b58\u5728\u6587\u4ef6\uff0c\u65e0\u9700\u538b\u7f29."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    move-object p2, v1

    :goto_4
    if-eqz v1, :cond_5

    .line 498
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz p2, :cond_9

    .line 501
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    .line 504
    :goto_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 505
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p0

    move-object p2, v1

    goto :goto_8

    :catch_3
    move-exception p0

    move-object p2, v1

    .line 492
    :goto_7
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 493
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :goto_8
    if-eqz v1, :cond_6

    .line 498
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_9

    :catch_4
    move-exception p0

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz p2, :cond_7

    .line 501
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_b

    .line 504
    :goto_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 505
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 507
    :cond_7
    :goto_b
    throw p0

    .line 509
    :cond_8
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e0d\u5b58\u5728."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    :goto_c
    return v3
.end method

.method public static getComments(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-static {p0}, Lcom/vondear/rxtool/RxZipTool;->getEntries(Ljava/io/File;)Ljava/util/Enumeration;

    move-result-object p0

    .line 411
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 413
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getComments(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxZipTool;->getComments(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries(Ljava/io/File;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxZipTool;->getEntries(Ljava/io/File;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static getFilesPath(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-static {p0}, Lcom/vondear/rxtool/RxZipTool;->getEntries(Ljava/io/File;)Ljava/util/Enumeration;

    move-result-object p0

    .line 378
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFilesPath(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxZipTool;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static removeDirFromZipArchive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 666
    :try_start_0
    new-instance v1, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v1, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    const-string p0, "GBK"

    .line 667
    invoke-virtual {v1, p0}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 670
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    :cond_0
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeader(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 682
    :cond_1
    invoke-virtual {v1}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object p1

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 685
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    .line 686
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 687
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 688
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 692
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/ZipFile;->removeFile(Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_4
    invoke-virtual {v1, p0}, Lnet/lingala/zip4j/core/ZipFile;->removeFile(Lnet/lingala/zip4j/model/FileHeader;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 698
    invoke-virtual {p0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    return v0
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxZipTool;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 270
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxZipTool;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 322
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 327
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    .line 328
    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 333
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 334
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;->setPassword([C)V

    .line 337
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object p0

    .line 339
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 341
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 342
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p2

    .line 330
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "\u538b\u7f29\u6587\u4ef6\u4e0d\u5408\u6cd5,\u53ef\u80fd\u88ab\u635f\u574f."

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_5
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "\u89e3\u538b\u7f29\u8def\u5f84\u4e0d\u5b58\u5728."

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "\u538b\u7f29\u6587\u4ef6\u4e0d\u5b58\u5728."

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static unzipFileByKeyword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 296
    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 295
    invoke-static {p0, p1, p2}, Lcom/vondear/rxtool/RxZipTool;->unzipFileByKeyword(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unzipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 254
    invoke-static {v1, p1}, Lcom/vondear/rxtool/RxZipTool;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static unzipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxZipTool;->unzipFiles(Ljava/util/Collection;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static zipEncrypt(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-static {v0, p1}, Lcom/vondear/rxtool/RxZipTool;->buildDestinationZipFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 517
    new-instance p1, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/16 v1, 0x8

    .line 519
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    const/4 v1, 0x5

    .line 521
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 522
    invoke-static {p3}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 523
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    const/4 v1, 0x0

    .line 525
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 526
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword([C)V

    .line 529
    :cond_0
    :try_start_0
    new-instance p3, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {p3, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {p3, v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V

    return-object p0

    .line 539
    :cond_1
    invoke-virtual {p3, v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {p3, v0, p1}, Lnet/lingala/zip4j/core/ZipFile;->addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 545
    invoke-virtual {p0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zipEncryptRargo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 600
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-static {v1, p1}, Lcom/vondear/rxtool/RxZipTool;->buildDestinationZipFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 602
    new-instance v4, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/16 p1, 0x8

    .line 604
    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    const/4 p1, 0x5

    .line 605
    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 606
    invoke-static {p3}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result p1

    const/4 v6, 0x1

    if-nez p1, :cond_0

    .line 607
    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    const/4 p1, 0x0

    .line 608
    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 609
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword([C)V

    .line 613
    :cond_0
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v2, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 616
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 617
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 618
    invoke-static {v3, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 v5, 0x1

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long v6, p4

    .line 620
    invoke-virtual/range {v2 .. v7}, Lnet/lingala/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V

    return-object p0

    :cond_1
    const/4 v3, 0x1

    mul-int/lit16 p1, p4, 0x3e8

    int-to-long p1, p1

    move-object v0, v2

    move-object v2, v4

    move-wide v4, p1

    .line 623
    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/core/ZipFile;->createZipFileFromFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V

    .line 625
    invoke-static {p0}, Lcom/vondear/rxtool/RxZipTool;->zipInfo(Ljava/lang/String;)D

    move-result-wide p1

    double-to-int p1, p1

    div-int/2addr p1, p4

    .line 626
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5206\u5272\u6210\u529f\uff01\u603b\u5171\u5206\u5272\u6210\u4e86"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v6

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a\u6587\u4ef6\uff01"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long p1, p4

    move-object v0, v2

    move-object v2, v4

    move-wide v4, p1

    .line 628
    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/core/ZipFile;->createZipFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 633
    invoke-virtual {p0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxZipTool;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 166
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, ""

    .line 167
    invoke-static {p0, p1, v3, p2}, Lcom/vondear/rxtool/RxZipTool;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    .line 171
    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    .line 171
    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    .line 173
    :cond_1
    throw p0

    :cond_2
    :goto_1
    return v0
.end method

.method private static zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 192
    array-length v0, p0

    if-gtz v0, :cond_2

    .line 193
    new-instance p0, Ljava/util/zip/ZipEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {p3}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 195
    invoke-virtual {p0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 197
    :cond_1
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 198
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_3

    .line 200
    :cond_2
    array-length v0, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    aget-object v4, p0, v3

    .line 202
    invoke-static {v4, p1, p2, p3}, Lcom/vondear/rxtool/RxZipTool;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 210
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {p3}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 213
    invoke-virtual {p0, p3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 215
    :cond_5
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p0, 0x400

    new-array p1, p0, [B

    .line 218
    :goto_2
    invoke-virtual {v3, p1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    .line 219
    invoke-virtual {p2, p1, v2, p3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 221
    :cond_6
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    .line 223
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    :cond_7
    :goto_3
    return v1

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_4
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    .line 224
    throw p0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxZipTool;->zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/vondear/rxtool/RxZipTool;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxZipTool;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 95
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const-string v1, ""

    .line 97
    invoke-static {p1, v1, v3, p2}, Lcom/vondear/rxtool/RxZipTool;->zipFile(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 104
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    .line 105
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return v0

    .line 104
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    .line 105
    invoke-static {p0}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    .line 105
    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    .line 107
    :cond_3
    throw p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxZipTool;->zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/vondear/rxtool/RxFileTool;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/vondear/rxtool/RxZipTool;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zipInfo(Ljava/lang/String;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 640
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    const-string p0, "GBK"

    .line 641
    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object p0

    .line 644
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 645
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    return-wide v0
.end method
