.class public Lcom/vondear/rxtool/RxTimeTool;
.super Ljava/lang/Object;
.source "RxTimeTool.java"


# static fields
.field public static final DEFAULT_SDF:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 186
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Date2Timestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 527
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static date2Milliseconds(Ljava/util/Date;)J
    .locals 2

    .line 293
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static date2String(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 271
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxTimeTool;->date2String(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static date2String(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 0

    .line 283
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSeconds(Ljava/lang/String;)J
    .locals 4

    .line 620
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+0"

    .line 621
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v1, 0x0

    .line 625
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 626
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p0, "\u65f6\u95f4\u6233"

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 630
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    .line 606
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+0"

    .line 607
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 608
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurTimeDate()Ljava/util/Date;
    .locals 1

    .line 434
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getCurTimeMills()J
    .locals 2

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurTimeString()Ljava/lang/String;
    .locals 1

    .line 413
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/vondear/rxtool/RxTimeTool;->date2String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurTimeString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    .line 424
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxTimeTool;->date2String(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 570
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxTimeTool;->simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 583
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->stringToInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v0}, Lcom/vondear/rxtool/RxTimeTool;->simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDaysByYearMonth(II)I
    .locals 2

    .line 639
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 640
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p1, v1

    const/4 p0, 0x2

    .line 641
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 642
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, -0x1

    .line 643
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->roll(II)V

    .line 644
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getIntervalByNow(Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;)J
    .locals 1

    .line 452
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxTimeTool;->getIntervalByNow(Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalByNow(Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;Ljava/text/SimpleDateFormat;)J
    .locals 1

    .line 471
    invoke-static {}, Lcom/vondear/rxtool/RxTimeTool;->getCurTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/vondear/rxtool/RxTimeTool;->getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalByNow(Ljava/util/Date;Lcom/vondear/rxtool/RxConstTool$TimeUnit;)J
    .locals 1

    .line 489
    invoke-static {}, Lcom/vondear/rxtool/RxTimeTool;->getCurTimeDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/vondear/rxtool/RxTimeTool;->getIntervalTime(Ljava/util/Date;Ljava/util/Date;Lcom/vondear/rxtool/RxConstTool$TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;)J
    .locals 1

    .line 353
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/RxTimeTool;->getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalTime(Ljava/lang/String;Ljava/lang/String;Lcom/vondear/rxtool/RxConstTool$TimeUnit;Ljava/text/SimpleDateFormat;)J
    .locals 2

    .line 373
    invoke-static {p0, p3}, Lcom/vondear/rxtool/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    .line 374
    invoke-static {p1, p3}, Lcom/vondear/rxtool/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 373
    invoke-static {v0, v1, p2}, Lcom/vondear/rxtool/RxTimeTool;->milliseconds2Unit(JLcom/vondear/rxtool/RxConstTool$TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getIntervalTime(Ljava/util/Date;Ljava/util/Date;Lcom/vondear/rxtool/RxConstTool$TimeUnit;)J
    .locals 2

    .line 393
    invoke-static {p1}, Lcom/vondear/rxtool/RxTimeTool;->date2Milliseconds(Ljava/util/Date;)J

    move-result-wide v0

    .line 394
    invoke-static {p0}, Lcom/vondear/rxtool/RxTimeTool;->date2Milliseconds(Ljava/util/Date;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 393
    invoke-static {v0, v1, p2}, Lcom/vondear/rxtool/RxTimeTool;->milliseconds2Unit(JLcom/vondear/rxtool/RxConstTool$TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getYestoryDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 593
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    .line 594
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 595
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxTimeTool;->simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 500
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static milliseconds2Date(J)Ljava/util/Date;
    .locals 1

    .line 303
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static milliseconds2String(J)Ljava/lang/String;
    .locals 1

    .line 197
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    .line 209
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static milliseconds2Unit(JLcom/vondear/rxtool/RxConstTool$TimeUnit;)J
    .locals 2

    .line 320
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool$1;->$SwitchMap$com$vondear$rxtool$RxConstTool$TimeUnit:[I

    invoke-virtual {p2}, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 330
    div-long/2addr p0, v0

    return-wide p0

    :cond_1
    const-wide/32 v0, 0x36ee80

    .line 328
    div-long/2addr p0, v0

    return-wide p0

    :cond_2
    const-wide/32 v0, 0xea60

    .line 326
    div-long/2addr p0, v0

    return-wide p0

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 324
    div-long/2addr p0, v0

    return-wide p0

    :cond_4
    const-wide/16 v0, 0x1

    .line 322
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static simpleDateFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 511
    invoke-static {p0}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "yyyy-MM-dd HH:mm:ss SSS"

    .line 514
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 248
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxTimeTool;->string2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 539
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 542
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 544
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 1

    .line 260
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static string2Milliseconds(Ljava/lang/String;)J
    .locals 2

    .line 220
    sget-object v0, Lcom/vondear/rxtool/RxTimeTool;->DEFAULT_SDF:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/vondear/rxtool/RxTimeTool;->string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static string2Milliseconds(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 0

    .line 233
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static string2Timestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 557
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxTimeTool;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 558
    invoke-static {p0}, Lcom/vondear/rxtool/RxTimeTool;->Date2Timestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForWeek(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 658
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 659
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return p0

    .line 662
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v2

    return p0
.end method

.method public static stringForWeek(Ljava/lang/String;Ljava/text/SimpleDateFormat;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 675
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 676
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return p0

    .line 679
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method
