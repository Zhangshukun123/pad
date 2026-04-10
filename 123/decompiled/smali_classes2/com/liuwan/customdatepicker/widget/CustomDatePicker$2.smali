.class Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;
.super Ljava/lang/Object;
.source "CustomDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageDayUnit(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field final synthetic val$delay:J

.field final synthetic val$showAnim:Z


# direct methods
.method constructor <init>(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;ZJ)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;->this$0:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iput-boolean p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;->val$showAnim:Z

    iput-wide p3, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;->this$0:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-boolean v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;->val$showAnim:Z

    iget-wide v2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$2;->val$delay:J

    invoke-static {v0, v1, v2, v3}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->access$100(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;ZJ)V

    return-void
.end method
