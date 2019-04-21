.class Lcom/aps/b$b;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aps/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/aps/b;

.field final synthetic b:Lcom/aps/b;


# direct methods
.method private constructor <init>(Lcom/aps/b;Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1450
    iput-object p2, p0, Lcom/aps/b$b;->a:Lcom/aps/b;

    .line 1451
    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/b;Lcom/aps/b;Lcom/aps/b$1;)V
    .locals 0

    .prologue
    .line 1447
    invoke-direct {p0, p1, p2}, Lcom/aps/b$b;-><init>(Lcom/aps/b;Lcom/aps/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1456
    if-nez p2, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1460
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1461
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    iget-object v1, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/b;->a(Lcom/aps/b;Ljava/util/List;)Ljava/util/List;

    .line 1465
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/b;->c(Lcom/aps/b;J)J

    .line 1466
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->e(Lcom/aps/b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/aps/b;->a(Lcom/aps/b;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1473
    :cond_2
    :try_start_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1474
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    const/4 v0, 0x4

    .line 1479
    :try_start_2
    iget-object v1, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 1486
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1491
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->f(Lcom/aps/b;)V

    goto :goto_0

    .line 1488
    :pswitch_2
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->f(Lcom/aps/b;)V

    goto :goto_0

    .line 1494
    :pswitch_3
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->f(Lcom/aps/b;)V

    goto :goto_0

    .line 1499
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1500
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->g(Lcom/aps/b;)V

    .line 1501
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->h(Lcom/aps/b;)V

    .line 1502
    iget-object v0, p0, Lcom/aps/b$b;->a:Lcom/aps/b;

    if-eqz v0, :cond_4

    .line 1503
    iget-object v0, p0, Lcom/aps/b$b;->a:Lcom/aps/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aps/b;->a(Lcom/aps/b;Z)Z

    .line 1509
    :cond_4
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/aps/g;->j:J

    .line 1510
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/aps/g;->k:J

    goto/16 :goto_0

    .line 1514
    :cond_5
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1518
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->i(Lcom/aps/b;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    .line 1519
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/aps/g;->j:J

    .line 1520
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/aps/g;->k:J

    .line 1525
    :cond_6
    iget-object v0, p0, Lcom/aps/b$b;->a:Lcom/aps/b;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/aps/b$b;->a:Lcom/aps/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aps/b;->a(Lcom/aps/b;Z)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1532
    :try_start_4
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->j(Lcom/aps/b;)Lcom/aps/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v0}, Lcom/aps/b;->j(Lcom/aps/b;)Lcom/aps/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/aa;->c()V

    .line 1534
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aps/b;->b(Lcom/aps/b;Z)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1536
    :catch_1
    move-exception v0

    .line 1537
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1545
    :cond_7
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1546
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {p1}, Lcom/aps/v;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/aps/b;->c(Lcom/aps/b;Z)Z

    goto/16 :goto_0

    .line 1550
    :cond_8
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/aps/b;->a(ZI)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1480
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 1486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
