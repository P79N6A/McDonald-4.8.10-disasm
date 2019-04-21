.class public Lcom/tencent/wxop/stat/StatService;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->onPause(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->onResume(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method public static startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)Z

    move-result v0

    return v0
.end method

.method public static trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method
