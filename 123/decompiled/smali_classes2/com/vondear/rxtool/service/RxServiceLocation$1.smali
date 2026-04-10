.class Lcom/vondear/rxtool/service/RxServiceLocation$1;
.super Ljava/lang/Object;
.source "RxServiceLocation.java"

# interfaces
.implements Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/service/RxServiceLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxtool/service/RxServiceLocation;


# direct methods
.method constructor <init>(Lcom/vondear/rxtool/service/RxServiceLocation;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastKnownLocation(Landroid/location/Location;)V
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$002(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$102(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    move-result-object v0

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$000(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$100(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$500(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$600(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$700(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;->getLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$302(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$402(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    move-result-object v0

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$000(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$100(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$500(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$600(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$700(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;->getLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v3}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->getCountryName(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$502(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v3}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->getLocality(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$602(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-virtual {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {v3}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vondear/rxtool/RxLocationTool;->getStreet(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$702(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    move-result-object v0

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$000(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$100(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$500(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$600(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$1;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-static {p1}, Lcom/vondear/rxtool/service/RxServiceLocation;->access$700(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;->getLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
