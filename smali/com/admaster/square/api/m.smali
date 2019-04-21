.class public Lcom/admaster/square/api/m;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    :try_start_0
    sget-boolean v0, Lcom/admaster/square/api/m;->a:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "AdMasterConvMobi"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 12
    sput-boolean p0, Lcom/admaster/square/api/m;->a:Z

    .line 13
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    :try_start_0
    sget-boolean v0, Lcom/admaster/square/api/m;->a:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "AdMasterConvMobi"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
