.class public Lcom/vondear/rxtool/view/RxToast;
.super Ljava/lang/Object;
.source "RxToast.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I

.field private static final ERROR_COLOR:I

.field private static final INFO_COLOR:I

.field private static final SUCCESS_COLOR:I

.field private static final TOAST_TYPEFACE:Ljava/lang/String; = "sans-serif-condensed"

.field private static final WARNING_COLOR:I

.field private static currentToast:Landroid/widget/Toast;

.field private static mExitTime:J

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#FFFFFF"

    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    const-string v0, "#FD4C5B"

    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vondear/rxtool/view/RxToast;->ERROR_COLOR:I

    const-string v0, "#3F51B5"

    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vondear/rxtool/view/RxToast;->INFO_COLOR:I

    const-string v0, "#388E3C"

    .line 44
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vondear/rxtool/view/RxToast;->SUCCESS_COLOR:I

    const-string v0, "#FFA900"

    .line 47
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vondear/rxtool/view/RxToast;->WARNING_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static custom(Landroid/content/Context;Ljava/lang/String;IIIIZZ)Landroid/widget/Toast;
    .locals 8

    .line 227
    invoke-static {p0, p2}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;
    .locals 3

    .line 232
    sget-object v0, Lcom/vondear/rxtool/view/RxToast;->currentToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vondear/rxtool/view/RxToast;->currentToast:Landroid/widget/Toast;

    :cond_0
    const-string v0, "layout_inflater"

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/vondear/rxtool/R$layout;->toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    sget v1, Lcom/vondear/rxtool/R$id;->toast_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 237
    sget v2, Lcom/vondear/rxtool/R$id;->toast_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p7, :cond_1

    .line 241
    invoke-static {p0, p4}, Lcom/vondear/rxtool/view/RxToast;->tint9PatchDrawableFrame(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 243
    :cond_1
    sget p4, Lcom/vondear/rxtool/R$drawable;->toast_frame:I

    invoke-static {p0, p4}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 245
    :goto_0
    invoke-static {v0, p0}, Lcom/vondear/rxtool/view/RxToast;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    if-eqz p6, :cond_3

    if-eqz p2, :cond_2

    .line 251
    invoke-static {v1, p2}, Lcom/vondear/rxtool/view/RxToast;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 249
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Avoid passing \'icon\' as null if \'withIcon\' is set to true"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 p0, 0x8

    .line 253
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_1
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    const-string p1, "sans-serif-condensed"

    .line 258
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    sget-object p0, Lcom/vondear/rxtool/view/RxToast;->currentToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 261
    sget-object p0, Lcom/vondear/rxtool/view/RxToast;->currentToast:Landroid/widget/Toast;

    invoke-virtual {p0, p5}, Landroid/widget/Toast;->setDuration(I)V

    .line 262
    sget-object p0, Lcom/vondear/rxtool/view/RxToast;->currentToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIZ)Landroid/widget/Toast;
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    .line 220
    invoke-static/range {v0 .. v7}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static doubleClickExit()Z
    .locals 5

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vondear/rxtool/view/RxToast;->mExitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "\u518d\u6309\u4e00\u6b21\u9000\u51fa"

    .line 393
    invoke-static {v0}, Lcom/vondear/rxtool/view/RxToast;->normal(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vondear/rxtool/view/RxToast;->mExitTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static error(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-static {p0, p1, v0, v1}, Lcom/vondear/rxtool/view/RxToast;->error(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static error(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/view/RxToast;->error(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static error(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 9

    .line 215
    sget v0, Lcom/vondear/rxtool/R$drawable;->ic_clear_white_48dp:I

    invoke-static {p0, v0}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v5, Lcom/vondear/rxtool/view/RxToast;->ERROR_COLOR:I

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 8

    .line 128
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vondear/rxtool/R$drawable;->ic_clear_white_48dp:I

    invoke-static {v1, v2}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v4, Lcom/vondear/rxtool/view/RxToast;->ERROR_COLOR:I

    const/4 v7, 0x1

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/vondear/rxtool/view/RxToast;->error(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static error(Ljava/lang/String;I)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/vondear/rxtool/view/RxToast;->error(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static info(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-static {p0, p1, v0, v1}, Lcom/vondear/rxtool/view/RxToast;->info(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static info(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/view/RxToast;->info(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static info(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 9

    .line 183
    sget v0, Lcom/vondear/rxtool/R$drawable;->ic_info_outline_white_48dp:I

    invoke-static {p0, v0}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v5, Lcom/vondear/rxtool/view/RxToast;->INFO_COLOR:I

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static info(Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 8

    .line 101
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vondear/rxtool/R$drawable;->ic_info_outline_white_48dp:I

    invoke-static {v1, v2}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v4, Lcom/vondear/rxtool/view/RxToast;->INFO_COLOR:I

    const/4 v7, 0x1

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 3

    .line 93
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/vondear/rxtool/view/RxToast;->info(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static info(Ljava/lang/String;I)V
    .locals 2

    .line 97
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/vondear/rxtool/view/RxToast;->info(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static normal(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-static {p0, p1, v0, v1, v0}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static normal(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-static {p0, p1, p2, v0, v1}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-static {p0, p1, p2, p3, v0}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;
    .locals 6

    .line 153
    sget v3, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static normal(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-static {p0, p1, v0, p2, v1}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static normal(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;
    .locals 6

    .line 77
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static normal(Ljava/lang/String;)V
    .locals 3

    .line 61
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v1}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static normal(Ljava/lang/String;I)V
    .locals 3

    .line 69
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static normal(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 73
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static normal(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 65
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, p1, v2}, Lcom/vondear/rxtool/view/RxToast;->normal(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static showToast(I)V
    .locals 2

    .line 354
    sget-object v0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_0
    sget-object p0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/vondear/rxtool/view/RxToast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 383
    sget-object v0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 384
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_0
    sget-object p0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 300
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 302
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 2

    .line 340
    sget-object v0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_0
    sget-object p0, Lcom/vondear/rxtool/view/RxToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToastLong(I)V
    .locals 2

    .line 331
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToastLong(Ljava/lang/String;)V
    .locals 2

    .line 324
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToastShort(I)V
    .locals 2

    .line 317
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToastShort(Ljava/lang/String;)V
    .locals 2

    .line 310
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static success(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-static {p0, p1, v0, v1}, Lcom/vondear/rxtool/view/RxToast;->success(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static success(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    .line 193
    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/view/RxToast;->success(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static success(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 9

    .line 198
    sget v0, Lcom/vondear/rxtool/R$drawable;->ic_check_white_48dp:I

    invoke-static {p0, v0}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v5, Lcom/vondear/rxtool/view/RxToast;->SUCCESS_COLOR:I

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static success(Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 8

    .line 113
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vondear/rxtool/R$drawable;->ic_check_white_48dp:I

    invoke-static {v1, v2}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v4, Lcom/vondear/rxtool/view/RxToast;->SUCCESS_COLOR:I

    const/4 v7, 0x1

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static success(Ljava/lang/String;)V
    .locals 3

    .line 105
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/vondear/rxtool/view/RxToast;->success(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static success(Ljava/lang/String;I)V
    .locals 2

    .line 109
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/vondear/rxtool/view/RxToast;->success(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final tint9PatchDrawableFrame(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 266
    sget v0, Lcom/vondear/rxtool/R$drawable;->toast_frame:I

    invoke-static {p0, v0}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 267
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p0
.end method

.method public static warning(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-static {p0, p1, v0, v1}, Lcom/vondear/rxtool/view/RxToast;->warning(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static warning(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/view/RxToast;->warning(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static warning(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 9

    .line 168
    sget v0, Lcom/vondear/rxtool/R$drawable;->ic_error_outline_white_48dp:I

    invoke-static {p0, v0}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v5, Lcom/vondear/rxtool/view/RxToast;->WARNING_COLOR:I

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static warning(Ljava/lang/String;IZ)Landroid/widget/Toast;
    .locals 8

    .line 89
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/vondear/rxtool/R$drawable;->ic_error_outline_white_48dp:I

    invoke-static {v1, v2}, Lcom/vondear/rxtool/view/RxToast;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/vondear/rxtool/view/RxToast;->DEFAULT_TEXT_COLOR:I

    sget v4, Lcom/vondear/rxtool/view/RxToast;->WARNING_COLOR:I

    const/4 v7, 0x1

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/vondear/rxtool/view/RxToast;->custom(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/vondear/rxtool/view/RxToast;->warning(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static warning(Ljava/lang/String;I)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/vondear/rxtool/view/RxToast;->warning(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
