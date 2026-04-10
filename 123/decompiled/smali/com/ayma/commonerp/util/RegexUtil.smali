.class public Lcom/ayma/commonerp/util/RegexUtil;
.super Ljava/lang/Object;
.source "RegexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "1MD90120200402162029245801"

    invoke-static {v0}, Lcom/ayma/commonerp/util/RegexUtil;->verifyOrderNum(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    return-void
.end method

.method public static verifyOrderNum(Ljava/lang/String;)Z
    .locals 3

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    return v1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\\d{20,}"

    .line 29
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
