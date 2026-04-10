.class Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;
.super Ljava/lang/Object;
.source "CustomDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->linkageHourUnit(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

.field final synthetic val$showAnim:Z


# direct methods
.method constructor <init>(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;Z)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;->this$0:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iput-boolean p2, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;->val$showAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;->this$0:Lcom/liuwan/customdatepicker/widget/CustomDatePicker;

    iget-boolean v1, p0, Lcom/liuwan/customdatepicker/widget/CustomDatePicker$3;->val$showAnim:Z

    invoke-static {v0, v1}, Lcom/liuwan/customdatepicker/widget/CustomDatePicker;->access$200(Lcom/liuwan/customdatepicker/widget/CustomDatePicker;Z)V

    return-void
.end method
