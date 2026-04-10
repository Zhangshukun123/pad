.class public Lcom/liuwan/customdatepicker/util/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# static fields
.field private static final DATE_FORMAT_PATTERN_YMD:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final DATE_FORMAT_PATTERN_YMD_HM:Ljava/lang/String; = "yyyy-MM-dd HH:mm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFormatPattern(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "yyyy-MM-dd HH:mm"

    return-object p0

    :cond_0
    const-string p0, "yyyy-MM-dd"

    return-object p0
.end method

.method private static long2Str(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static long2Str(JZ)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p2}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->getFormatPattern(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->long2Str(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static str2Long(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 47
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static str2Long(Ljava/lang/String;Z)J
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->getFormatPattern(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->str2Long(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method
