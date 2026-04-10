.class public Lcom/liuwan/customdatepicker/widget/CustomDatePicker;
.super Ljava/lang/Object;
.source "CustomDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;
    }
.end annotation


# static fields
.field private static final LINKAGE_DELAY_DEFAULT:J = 0x64L

.field private static final MAX_HOUR_UNIT:I = 0x17

.field private static final MAX_MINUTE_UNIT:I = 0x3b

.field private static final MAX_MONTH_UNIT:I = 0xc

.field private static final SCROLL_UNIT_HOUR:I = 0x1

.field private static final SCROLL_UNIT_MINUTE:I = 0x2


# instance fields
.field private mBeginDay:I

.field private mBeginHour:I

.field private mBeginMinute:I

.field private mBeginMonth:I

.field private mBeginTime:Ljava/util/Calendar;

.field private mBeginYear:I

.field private mCallback:Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;

.field private mCanDialogShow:Z

.field private mCanShowPreciseTime:Z

.field private mContext:Landroid/content/Context;

.field private mDayUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

.field private mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

.field private mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

.field private mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

.field private mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

.field private mEndDay:I

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndMonth:I

.field private mEndTime:Ljava/util/Calendar;

.field private mEndYear:I

.field private mHourUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinuteUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerDialog:Landroid/app/Dialog;

.field private mScrollUnits:I

.field private mSelectedTime:Ljava/util/Calendar;

.field private mTvHourUnit:Landroid/widget/TextView;

.field private mTvMinuteUnit:Landroid/widget/TextView;

.field private mYearUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;JJ)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    cmp-long v0, p3, p5

    if-ltz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCallback:Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    .line 105
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    .line 107
    invoke-virtual {p1, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    .line 110
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initView()V

    .line 111
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initData()V

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCanDialogShow:Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCanDialogShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 84
    invoke-static {p3, v0}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->str2Long(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 85
    invoke-static {p4, v0}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->str2Long(Ljava/lang/String;Z)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 84
    invoke-direct/range {v1 .. v7}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;-><init>(Landroid/content/Context;Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;JJ)V

    return-void
.end method

.method static synthetic access$000(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;ZJ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageDayUnit(ZJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;ZJ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageHourUnit(ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageMinuteUnit(Z)V

    return-void
.end method

.method private canShow()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCanDialogShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getValueInRange(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private initData()V
    .locals 10

    .line 190
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 192
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    .line 194
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    .line 195
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    .line 196
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    .line 197
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMinute:I

    .line 199
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    .line 200
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    .line 201
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    .line 202
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    .line 203
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMinute:I

    .line 205
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 206
    iget v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    iget v6, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-eq v2, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 207
    iget v6, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    iget v7, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    .line 208
    iget v7, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    iget v8, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    if-eq v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_4

    .line 209
    iget v8, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMinute:I

    iget v9, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMinute:I

    if-eq v8, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    const/16 v4, 0x17

    const/16 v8, 0x3b

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    invoke-direct {p0, v5, v0, v4, v8}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initDateUnits(IIII)V

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_6

    .line 213
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v4, v8}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initDateUnits(IIII)V

    goto :goto_5

    :cond_6
    if-eqz v6, :cond_7

    .line 215
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    invoke-direct {p0, v0, v1, v4, v8}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initDateUnits(IIII)V

    goto :goto_5

    :cond_7
    if-eqz v7, :cond_8

    .line 217
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initDateUnits(IIII)V

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    .line 219
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    iget v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initDateUnits(IIII)V

    :cond_9
    :goto_5
    return-void
.end method

.method private initDateUnits(IIII)V
    .locals 5

    .line 224
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    :goto_0
    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    if-gt v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    :goto_1
    if-gt v0, p1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_1
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    :goto_2
    if-gt p1, p2, :cond_2

    .line 233
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 236
    :cond_2
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_3

    .line 237
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    iget p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 239
    :cond_3
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    :goto_3
    if-gt p1, p3, :cond_4

    .line 240
    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 244
    :cond_4
    :goto_4
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_5

    .line 245
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    iget p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMinute:I

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 247
    :cond_5
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMinute:I

    :goto_5
    if-gt p1, p4, :cond_6

    .line 248
    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    iget-object p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 252
    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 253
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    .line 254
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 255
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    .line 256
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 257
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    .line 258
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 259
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    .line 260
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 261
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    .line 263
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanScroll()V

    return-void
.end method

.method private varargs initScrollUnit([Ljava/lang/Integer;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 573
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 576
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 577
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x3

    .line 574
    iput p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 3

    .line 116
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mContext:Landroid/content/Context;

    sget v2, Lcom/liuwan/customdatepicker/R$style;->date_picker_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 118
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$layout;->dialog_date_picker:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 120
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 123
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 124
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 125
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->tv_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->tv_hour_unit:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mTvHourUnit:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->tv_minute_unit:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mTvMinuteUnit:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->dpv_year:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liuwan/customdatepicker/widget/PickerView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    .line 135
    invoke-virtual {v0, p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setOnSelectListener(Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;)V

    .line 136
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->dpv_month:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liuwan/customdatepicker/widget/PickerView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    .line 137
    invoke-virtual {v0, p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setOnSelectListener(Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;)V

    .line 138
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->dpv_day:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liuwan/customdatepicker/widget/PickerView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    .line 139
    invoke-virtual {v0, p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setOnSelectListener(Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;)V

    .line 140
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->dpv_hour:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liuwan/customdatepicker/widget/PickerView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    .line 141
    invoke-virtual {v0, p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setOnSelectListener(Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;)V

    .line 142
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    sget v1, Lcom/liuwan/customdatepicker/R$id;->dpv_minute:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liuwan/customdatepicker/widget/PickerView;

    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    .line 143
    invoke-virtual {v0, p0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setOnSelectListener(Lcom/liuwan/customdatepicker/widget/PickerView$OnSelectListener;)V

    return-void
.end method

.method private linkageDayUnit(ZJ)V
    .locals 8

    .line 331
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 332
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 333
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    const/4 v5, 0x5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-ne v3, v4, :cond_0

    .line 334
    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    .line 335
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    goto :goto_0

    .line 336
    :cond_0
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    if-ne v2, v3, :cond_1

    .line 337
    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    .line 338
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    goto :goto_0

    .line 339
    :cond_1
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-ne v2, v0, :cond_2

    .line 341
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 347
    :goto_0
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_3

    .line 349
    iget-object v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    iget-object v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 353
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->getValueInRange(III)I

    move-result v0

    .line 354
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 355
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    if-eqz p1, :cond_4

    .line 357
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->startAnim()V

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;-><init>(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;ZJ)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private linkageHourUnit(ZJ)V
    .locals 7

    .line 375
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 378
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 379
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 380
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 381
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    const/16 v5, 0x17

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    if-ne v3, v4, :cond_0

    .line 382
    iget v6, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    .line 383
    iget v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    goto :goto_0

    .line 384
    :cond_0
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    if-ne v1, v3, :cond_1

    .line 385
    iget v6, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    goto :goto_0

    .line 387
    :cond_1
    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    if-ne v1, v0, :cond_2

    .line 389
    iget v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    .line 395
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v6

    :goto_1
    if-gt v0, v5, :cond_3

    .line 397
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 401
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, v6, v5}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->getValueInRange(III)I

    move-result v0

    .line 402
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 403
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    if-eqz p1, :cond_4

    .line 405
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->startAnim()V

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;

    invoke-direct {v1, p0, p1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;-><init>(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;Z)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private linkageMinuteUnit(Z)V
    .locals 8

    .line 423
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 426
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 427
    iget-object v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 428
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 429
    iget-object v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 430
    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    iget v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    const/16 v6, 0x3b

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    iget v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    iget v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    iget v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    if-ne v4, v5, :cond_0

    .line 431
    iget v7, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMinute:I

    .line 432
    iget v6, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMinute:I

    goto :goto_0

    .line 433
    :cond_0
    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    if-ne v1, v4, :cond_1

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginDay:I

    if-ne v2, v4, :cond_1

    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginHour:I

    if-ne v3, v4, :cond_1

    .line 434
    iget v7, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMinute:I

    goto :goto_0

    .line 436
    :cond_1
    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndDay:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndHour:I

    if-ne v3, v0, :cond_2

    .line 438
    iget v6, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMinute:I

    .line 444
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v7

    :goto_1
    if-gt v0, v6, :cond_3

    .line 446
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 450
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, v7, v6}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->getValueInRange(III)I

    move-result v0

    .line 451
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 452
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    if-eqz p1, :cond_4

    .line 454
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->startAnim()V

    .line 458
    :cond_4
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setCanScroll()V

    return-void
.end method

.method private linkageMonthUnit(ZJ)V
    .locals 8

    .line 283
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 284
    iget v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    iget v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    const/16 v4, 0xc

    if-ne v2, v3, :cond_0

    .line 285
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    .line 286
    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 288
    iget v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginMonth:I

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 292
    iget v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndMonth:I

    :cond_2
    const/4 v0, 0x1

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v0

    :goto_1
    if-gt v2, v4, :cond_3

    .line 301
    iget-object v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    iget-object v5, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDecimalFormat:Ljava/text/DecimalFormat;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    :cond_3
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 306
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v2, v0, v4}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->getValueInRange(III)I

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 308
    iget-object v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    if-eqz p1, :cond_4

    .line 310
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->startAnim()V

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    new-instance v1, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$1;-><init>(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;ZJ)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/liuwan/customdatepicker/widget/PickerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setCanScroll()V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScroll(Z)V

    .line 268
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMonthUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScroll(Z)V

    .line 269
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDayUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScroll(Z)V

    .line 270
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mHourUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScroll(Z)V

    .line 271
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mMinuteUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mScrollUnits:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScroll(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 149
    sget v0, Lcom/liuwan/customdatepicker/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    sget v0, Lcom/liuwan/customdatepicker/R$id;->tv_confirm:I

    if-ne p1, v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCallback:Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;

    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$Callback;->onTimeSelected(J)V

    .line 155
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 614
    iput-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    .line 616
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->onDestroy()V

    .line 617
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->onDestroy()V

    .line 618
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->onDestroy()V

    .line 619
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->onDestroy()V

    .line 620
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 171
    sget v0, Lcom/liuwan/customdatepicker/R$id;->dpv_year:I

    const-wide/16 v1, 0x64

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 173
    invoke-direct {p0, v3, v1, v2}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageMonthUnit(ZJ)V

    goto :goto_0

    .line 174
    :cond_1
    sget v0, Lcom/liuwan/customdatepicker/R$id;->dpv_month:I

    if-ne p1, v0, :cond_2

    .line 175
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v3

    .line 176
    iget-object v4, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    sub-int/2addr p2, p1

    invoke-virtual {v4, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 177
    invoke-direct {p0, v3, v1, v2}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageDayUnit(ZJ)V

    goto :goto_0

    .line 178
    :cond_2
    sget v0, Lcom/liuwan/customdatepicker/R$id;->dpv_day:I

    if-ne p1, v0, :cond_3

    .line 179
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 180
    invoke-direct {p0, v3, v1, v2}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageHourUnit(ZJ)V

    goto :goto_0

    .line 181
    :cond_3
    sget v0, Lcom/liuwan/customdatepicker/R$id;->dpv_hour:I

    if-ne p1, v0, :cond_4

    .line 182
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 183
    invoke-direct {p0, v3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageMinuteUnit(Z)V

    goto :goto_0

    .line 184
    :cond_4
    sget v0, Lcom/liuwan/customdatepicker/R$id;->dpv_minute:I

    if-ne p1, v0, :cond_5

    .line 185
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method

.method public setCanShowAnim(Z)V
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanShowAnim(Z)V

    .line 602
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanShowAnim(Z)V

    .line 603
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanShowAnim(Z)V

    .line 604
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanShowAnim(Z)V

    .line 605
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanShowAnim(Z)V

    return-void
.end method

.method public setCanShowPreciseTime(Z)V
    .locals 5

    .line 554
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 557
    invoke-direct {p0, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initScrollUnit([Ljava/lang/Integer;)V

    .line 558
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mTvHourUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v1, v0}, Lcom/liuwan/customdatepicker/widget/PickerView;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mTvMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->initScrollUnit([Ljava/lang/Integer;)V

    .line 564
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mTvHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, v1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mTvMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    :goto_0
    iput-boolean p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCanShowPreciseTime:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 545
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setScrollLoop(Z)V
    .locals 1

    .line 586
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScrollLoop(Z)V

    .line 589
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMonth:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScrollLoop(Z)V

    .line 590
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvDay:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScrollLoop(Z)V

    .line 591
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvHour:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScrollLoop(Z)V

    .line 592
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvMinute:Lcom/liuwan/customdatepicker/widget/PickerView;

    invoke-virtual {v0, p1}, Lcom/liuwan/customdatepicker/widget/PickerView;->setCanScrollLoop(Z)V

    return-void
.end method

.method public setSelectedTime(JZ)Z
    .locals 3

    .line 522
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 525
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginTime:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 527
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 529
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 531
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 532
    iget p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    :goto_1
    iget p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mEndYear:I

    if-gt p1, p2, :cond_3

    .line 533
    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 535
    :cond_3
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mYearUnits:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setDataList(Ljava/util/List;)V

    .line 536
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mDpvYear:Lcom/liuwan/customdatepicker/widget/PickerView;

    iget-object p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mSelectedTime:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mBeginYear:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/liuwan/customdatepicker/widget/PickerView;->setSelected(I)V

    if-eqz p3, :cond_4

    const-wide/16 p1, 0x64

    goto :goto_2

    :cond_4
    const-wide/16 p1, 0x0

    .line 537
    :goto_2
    invoke-direct {p0, p3, p1, p2}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageMonthUnit(ZJ)V

    return v0
.end method

.method public setSelectedTime(Ljava/lang/String;Z)Z
    .locals 2

    .line 497
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mCanShowPreciseTime:Z

    .line 498
    invoke-static {p1, v0}, Lcom/liuwan/customdatepicker/util/DateFormatUtils;->str2Long(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setSelectedTime(JZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public show(J)V
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0, p1, p2, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setSelectedTime(JZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 510
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->canShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->setSelectedTime(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 481
    iget-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->mPickerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
