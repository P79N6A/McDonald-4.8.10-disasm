.class Lcom/threatmetrix/TrustDefender/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/p$a;,
        Lcom/threatmetrix/TrustDefender/p$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    const-class v2, Lcom/threatmetrix/TrustDefender/p;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 30
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v2, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    .line 43
    const-string v2, "android.app.admin.DevicePolicyManager"

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "devicePolicyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "ENCRYPTION_STATUS_UNSUPPORTED"

    invoke-static {v0, v2, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 47
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    :cond_0
    const-string v2, "ENCRYPTION_STATUS_INACTIVE"

    invoke-static {v0, v2, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    .restart local v1    # "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 52
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    :cond_1
    const-string v2, "ENCRYPTION_STATUS_ACTIVATING"

    invoke-static {v0, v2, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .restart local v1    # "value":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 57
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    :cond_2
    const-string v2, "ENCRYPTION_STATUS_ACTIVE"

    invoke-static {v0, v2, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .restart local v1    # "value":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 62
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    :cond_3
    const-string v2, "ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY"

    invoke-static {v0, v2, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .restart local v1    # "value":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 67
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    :cond_4
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/threatmetrix/TrustDefender/x;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 800
    new-instance v0, Lcom/threatmetrix/TrustDefender/x;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefender/x;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 356
    .local v3, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "language":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 364
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    .end local v1    # "country":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static a(JJ)Ljava/lang/String;
    .locals 6
    .param p0, "freeSpace"    # J
    .param p2, "bootTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v1, "state":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "deviceState":Ljava/lang/String;
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p0, "m_context"    # Landroid/content/Context;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    const/high16 v12, 0x44800000    # 1024.0f

    const/4 v14, 0x1

    .line 551
    sget-object v10, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v5, "fingerprint":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ""

    .line 623
    :goto_0
    return-object v10

    .line 559
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 560
    .local v7, "telephonyService":Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v10, v7, Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_2

    .line 566
    :cond_1
    const-string v10, ""

    goto :goto_0

    .line 568
    :cond_2
    move-object v0, v7

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v6, v0

    .line 569
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    const-string v2, "Unknown"

    .line 571
    .local v2, "carrierName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-ne v10, v14, :cond_3

    .line 574
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 577
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->e()J

    move-result-wide v10

    long-to-float v10, v10

    div-float/2addr v10, v12

    div-float/2addr v10, v12

    div-float/2addr v10, v12

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 598
    new-instance v3, Lcom/threatmetrix/TrustDefender/j;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/threatmetrix/TrustDefender/j;-><init>(Landroid/content/Context;)V

    .line 599
    .local v3, "display":Lcom/threatmetrix/TrustDefender/j;
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/j;->a()I

    move-result v8

    .line 600
    .local v8, "x":I
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/j;->b()I

    move-result v9

    .line 601
    .local v9, "y":I
    if-lt v8, v9, :cond_4

    .line 603
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    :goto_1
    sget-object v10, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 612
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string v12, "Processor"

    aput-object v12, v11, v15

    const-string v12, "Hardware"

    aput-object v12, v11, v14

    const/4 v12, 0x2

    const-string v13, "Serial"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, "/proc/cpuinfo"

    const-string v12, ":"

    invoke-static {v11, v10, v12, v14}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getCPUInfo returned: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    sget-object v10, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 616
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-array v11, v14, [Ljava/lang/String;

    const-string v12, "MemTotal"

    aput-object v12, v11, v15

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, "/proc/meminfo"

    const-string v12, ":"

    invoke-static {v11, v10, v12, v14}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getMemInfo returned: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    sget-object v10, Lcom/threatmetrix/TrustDefender/g$b;->i:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefender/g$b;->j:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefender/g$b;->l:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefender/g$b;->m:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    sget-object v10, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getDeviceFingerprint returned: hash("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 585
    .end local v2    # "carrierName":Ljava/lang/String;
    .end local v3    # "display":Lcom/threatmetrix/TrustDefender/j;
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    .end local v7    # "telephonyService":Ljava/lang/Object;
    .end local v8    # "x":I
    .end local v9    # "y":I
    :catch_0
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 586
    const-string v10, ""

    goto/16 :goto_0

    .line 588
    :catch_1
    move-exception v4

    .line 590
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v10, ""

    goto/16 :goto_0

    .line 607
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "carrierName":Ljava/lang/String;
    .restart local v3    # "display":Lcom/threatmetrix/TrustDefender/j;
    .restart local v6    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v7    # "telephonyService":Ljava/lang/Object;
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_4
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "isDuplicateKeyPermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v5, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 455
    .local v0, "br":Ljava/io/BufferedReader;
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 457
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 463
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "raw":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 467
    const-string v8, ""

    .line 468
    .local v8, "paramValue":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 471
    invoke-static {v10, p2}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 472
    .local v9, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 473
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "paramName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 476
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 479
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 481
    const/4 v11, 0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 483
    :cond_1
    if-nez p3, :cond_8

    .line 526
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move-object v0, v1

    .line 540
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "paramName":Ljava/lang/String;
    .end local v8    # "paramValue":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "raw":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    return-object v8

    .line 534
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "paramName":Ljava/lang/String;
    .restart local v8    # "paramValue":Ljava/lang/String;
    .restart local v9    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "raw":Ljava/lang/String;
    :catch_0
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto :goto_1

    .line 491
    .end local v7    # "paramName":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v2, "build":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 495
    .local v6, "k":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_3

    .line 497
    if-nez p3, :cond_4

    .line 526
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v8, v10

    .line 535
    goto :goto_2

    .line 534
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto :goto_4

    .line 501
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 503
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 522
    .end local v2    # "build":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "k":Ljava/lang/String;
    .end local v8    # "paramValue":Ljava/lang/String;
    .end local v10    # "raw":Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_5
    :try_start_6
    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 526
    if-eqz v0, :cond_6

    .line 530
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 540
    .end local v3    # "file":Ljava/io/File;
    :cond_6
    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 509
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "build":Ljava/lang/StringBuilder;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "paramValue":Ljava/lang/String;
    .restart local v10    # "raw":Ljava/lang/String;
    :cond_7
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-eqz v11, :cond_8

    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 512
    .end local v2    # "build":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 514
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 515
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 526
    .end local v8    # "paramValue":Ljava/lang/String;
    .end local v10    # "raw":Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_7
    if-eqz v0, :cond_a

    .line 530
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 535
    :cond_a
    :goto_8
    throw v11

    .line 526
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "raw":Ljava/lang/String;
    :cond_b
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v1

    .line 535
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 534
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    move-object v0, v1

    .line 535
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 534
    .end local v10    # "raw":Ljava/lang/String;
    :catch_4
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto :goto_6

    :catch_5
    move-exception v12

    sget-object v12, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto :goto_8

    .line 526
    :catchall_1
    move-exception v11

    goto :goto_7

    .line 522
    :catch_6
    move-exception v11

    goto :goto_5
.end method

.method static a(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 12
    .param p0, "fontCount"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "fontHash":Ljava/lang/String;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v5

    const-string v7, "/system/fonts"

    invoke-virtual {v5, v7}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 288
    .local v3, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 290
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fontHash":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 291
    .restart local v1    # "fontHash":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_0
    :goto_0
    return-object v1

    .line 296
    .end local v3    # "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/io/File;

    const-string v7, "/system/fonts/"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, ".ttf"

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v9, v8

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_3

    aget-object v10, v8, v5

    if-eqz v10, :cond_2

    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v11, v6, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 297
    .restart local v3    # "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v2, "fontString":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 303
    .end local v0    # "f":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v7, "found":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 644
    :cond_0
    const/16 v21, 0x0

    .line 771
    :goto_0
    return-object v21

    .line 646
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/net/URI;

    .line 648
    .local v19, "uri":Ljava/net/URI;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v21

    if-eqz v21, :cond_3

    new-instance v21, Ljava/lang/InterruptedException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/InterruptedException;-><init>()V

    throw v21

    .line 650
    :cond_3
    if-eqz v19, :cond_2

    .line 651
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v21

    const-string v22, "file"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 655
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v6, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v17

    .line 658
    .local v17, "query":Ljava/lang/String;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 661
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_5

    .line 662
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "true"

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v21, "false"

    goto :goto_2

    .line 667
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 670
    invoke-static/range {v17 .. v17}, Lcom/threatmetrix/TrustDefender/ai;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 671
    .local v13, "kvs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "grep"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 672
    .local v10, "isGrep":Z
    if-nez v10, :cond_8

    const-string v21, "keys"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 675
    :cond_8
    const-string v21, "sep"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 676
    .local v18, "sep":Ljava/lang/String;
    if-nez v10, :cond_a

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 677
    :cond_9
    const-string v18, ":"

    .line 678
    :cond_a
    if-eqz v10, :cond_c

    const-string v21, "grep"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v12, v21

    .line 679
    .local v12, "keys":Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_18

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_18

    .line 680
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 683
    .local v11, "k":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-static {v0, v11, v1, v2}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 685
    .local v9, "info":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_2

    .line 687
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_b

    .line 688
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 678
    .end local v9    # "info":Ljava/lang/String;
    .end local v11    # "k":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "keys":Ljava/lang/String;
    :cond_c
    const-string v21, "keys"

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v12, v21

    goto :goto_3

    .line 695
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "isGrep":Z
    .end local v13    # "kvs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "query":Ljava/lang/String;
    .end local v18    # "sep":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v21

    const-string v22, "intro"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 700
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 701
    .local v4, "className":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 703
    .local v15, "methodOrFieldName":Ljava/lang/String;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 705
    :cond_e
    sget-object v21, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    const-string v22, "getURLs: empty className"

    invoke-static/range {v21 .. v22}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4    # "className":Ljava/lang/String;
    .end local v15    # "methodOrFieldName":Ljava/lang/String;
    :catch_0
    move-exception v21

    goto/16 :goto_1

    .line 709
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v15    # "methodOrFieldName":Ljava/lang/String;
    :cond_f
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 711
    :cond_10
    sget-object v21, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 715
    :cond_11
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 717
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 720
    :cond_12
    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 721
    .local v3, "c":Ljava/lang/Class;
    if-nez v3, :cond_13

    .line 723
    sget-object v21, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "getURLs: failed to find class: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 727
    :cond_13
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v3, v15, v0}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 728
    .local v14, "m":Ljava/lang/reflect/Method;
    if-eqz v14, :cond_15

    .line 730
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v3, v14, v0}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 731
    .local v16, "o":Ljava/lang/Object;
    if-eqz v16, :cond_2

    .line 733
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 735
    .local v20, "v":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 737
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_14

    .line 738
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_14
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 746
    .end local v16    # "o":Ljava/lang/Object;
    .end local v20    # "v":Ljava/lang/String;
    :cond_15
    invoke-static {v3, v15}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 747
    .local v5, "f":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_17

    .line 749
    invoke-static {v3, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v16

    .line 750
    .restart local v16    # "o":Ljava/lang/Object;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 752
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_16

    .line 753
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_16
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    check-cast v16, Ljava/lang/String;

    .end local v16    # "o":Ljava/lang/Object;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 759
    :cond_17
    sget-object v21, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "getURLs: failed to find method or field: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 768
    .end local v3    # "c":Ljava/lang/Class;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v14    # "m":Ljava/lang/reflect/Method;
    .end local v15    # "methodOrFieldName":Ljava/lang/String;
    .end local v19    # "uri":Ljava/net/URI;
    :cond_18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_19

    .line 769
    sget-object v21, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "found "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v9, "foundURLs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 91
    .local v16, "not_matched":I
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v9

    .line 96
    :cond_1
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v26, "validPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v27, "validURLs":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 100
    .local v17, "p":Ljava/lang/String;
    const/16 v23, 0x0

    .line 103
    .local v23, "url":Ljava/net/URI;
    :try_start_0
    new-instance v24, Ljava/net/URI;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v23    # "url":Ljava/net/URI;
    .local v24, "url":Ljava/net/URI;
    move-object/from16 v23, v24

    .line 109
    .end local v24    # "url":Ljava/net/URI;
    .restart local v23    # "url":Ljava/net/URI;
    :goto_2
    if-eqz v23, :cond_2

    .line 110
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_3

    .line 114
    sget-object v29, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Failed to get url scheme from: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    :catch_0
    move-exception v29

    sget-object v29, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto :goto_2

    .line 118
    :cond_3
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .local v25, "validPath":Ljava/lang/StringBuilder;
    const-string v29, "://"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_7

    .line 124
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_4
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_5

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_5

    .line 129
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_6

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_6

    .line 133
    const-string v29, "?"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_6
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 125
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_4

    .line 126
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 137
    .end local v17    # "p":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URI;
    .end local v25    # "validPath":Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v30

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "nativeURLs":[Ljava/lang/String;
    sget-object v5, Lcom/threatmetrix/TrustDefender/g$b;->c:Ljava/lang/String;

    .line 140
    .local v5, "buildTags":Ljava/lang/String;
    new-instance v19, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v29, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct/range {v29 .. v29}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 142
    .local v19, "pm":Lcom/threatmetrix/TrustDefender/g$i;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v10, v0, :cond_1b

    .line 144
    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/net/URI;

    .line 145
    .restart local v23    # "url":Ljava/net/URI;
    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 146
    .local v18, "path":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v29

    if-eqz v29, :cond_9

    new-instance v29, Ljava/lang/InterruptedException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/InterruptedException;-><init>()V

    throw v29

    .line 148
    :cond_9
    const/4 v8, 0x0

    .line 150
    .local v8, "foundMatch":Z
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    const-string v30, "file"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 152
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 154
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    .line 253
    .end local v6    # "file":Ljava/io/File;
    :cond_a
    :goto_5
    if-eqz v8, :cond_1a

    .line 255
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 156
    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    const-string v30, "tags"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 160
    if-eqz v5, :cond_a

    .line 162
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_d

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v21

    .line 163
    .local v21, "tagToCheck":Ljava/lang/String;
    :goto_7
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_a

    .line 164
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_5

    .line 162
    .end local v21    # "tagToCheck":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    .line 167
    :cond_e
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    const-string v30, "pkg"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 169
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v22

    .line 170
    .local v22, "uri":Ljava/lang/String;
    :goto_8
    if-eqz v22, :cond_a

    .line 173
    sget v29, Lcom/threatmetrix/TrustDefender/g$d;->a:I

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;I)Z

    move-result v8

    goto :goto_5

    .line 169
    .end local v22    # "uri":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    .line 176
    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v29

    const-string v30, "prop"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 187
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_11

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v20

    .line 188
    .local v20, "property":Ljava/lang/String;
    :goto_9
    if-eqz v20, :cond_b

    .line 189
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v28

    .line 192
    .local v28, "value":Ljava/lang/String;
    if-eqz v28, :cond_b

    .line 193
    const-string v29, "ro.build.version.codename"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 197
    sget-object v29, Lcom/threatmetrix/TrustDefender/g$b$a;->b:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 198
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 187
    .end local v20    # "property":Ljava/lang/String;
    .end local v28    # "value":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    goto :goto_9

    .line 200
    .restart local v20    # "property":Ljava/lang/String;
    .restart local v28    # "value":Ljava/lang/String;
    :cond_12
    const-string v29, "ro.build.date.utc"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 202
    sget-wide v30, Lcom/threatmetrix/TrustDefender/g$b;->a:J

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 203
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 205
    :cond_13
    const-string v29, "ro.build.type"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 207
    sget-object v29, Lcom/threatmetrix/TrustDefender/g$b;->b:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 208
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 210
    :cond_14
    const-string v29, "ro.build.tags"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 212
    sget-object v29, Lcom/threatmetrix/TrustDefender/g$b;->c:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 213
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 215
    :cond_15
    const-string v29, "ro.build.host"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 217
    sget-object v29, Lcom/threatmetrix/TrustDefender/g$b;->d:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 218
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 220
    :cond_16
    const-string v29, "ro.build.user"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 222
    sget-object v29, Lcom/threatmetrix/TrustDefender/g$b;->f:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 223
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 225
    :cond_17
    const-string v29, "ro.build.id"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 227
    sget-object v29, Lcom/threatmetrix/TrustDefender/g$b;->g:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 228
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 234
    :cond_18
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v12, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v20, v29, v30

    move-object/from16 v0, v29

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 236
    const-string v29, "/system/build.prop"

    const-string v30, "="

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v12, v1, v2}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "found":Ljava/lang/String;
    if-eqz v7, :cond_19

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 239
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 244
    :cond_19
    const-string v29, "/default.prop"

    const-string v30, "="

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v12, v1, v2}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 245
    if-eqz v7, :cond_a

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 247
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 259
    .end local v7    # "found":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "property":Ljava/lang/String;
    .end local v28    # "value":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 263
    .end local v8    # "foundMatch":Z
    .end local v18    # "path":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URI;
    :cond_1b
    sget-object v29, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "matched "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz v15, :cond_1c

    array-length v0, v15

    move/from16 v29, v0

    if-lez v29, :cond_1c

    .line 267
    move-object v4, v15

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v15

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_a
    if-ge v11, v13, :cond_1c

    aget-object v14, v4, v11

    .line 269
    .local v14, "n":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "a"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 273
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "n":Ljava/lang/String;
    :cond_1c
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 274
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/w;->a()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 275
    sget-object v29, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "found "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, ";"

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method static a(Lcom/threatmetrix/TrustDefender/p$b;)Z
    .locals 4
    .param p0, "tzInfo"    # Lcom/threatmetrix/TrustDefender/p$b;

    .prologue
    const v2, 0xea60

    .line 779
    if-nez p0, :cond_0

    .line 780
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "tzInfo cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 783
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 784
    .local v0, "tz":Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/threatmetrix/TrustDefender/p$b;->a:I

    .line 787
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/threatmetrix/TrustDefender/p$b;->b:I

    .line 790
    sget-object v1, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTimeZoneInfo: dstDiff="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/threatmetrix/TrustDefender/p$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gmfOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/threatmetrix/TrustDefender/p$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v1, 0x1

    .line 795
    :goto_0
    return v1

    .line 794
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 795
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 378
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 379
    .local v3, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "language":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 387
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    .end local v1    # "country":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 828
    const-string v4, "-"

    .line 832
    .local v4, "unknown":Ljava/lang/String;
    new-instance v7, Lcom/threatmetrix/TrustDefender/g$a;

    new-instance v8, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v8}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v7, v8, p0}, Lcom/threatmetrix/TrustDefender/g$a;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/g$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/threatmetrix/TrustDefender/g$h;

    new-instance v7, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v7}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    sget v8, Lcom/threatmetrix/TrustDefender/g$d;->b:I

    invoke-direct {v2, v7, p0, v3, v8}, Lcom/threatmetrix/TrustDefender/g$h;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;Ljava/lang/String;I)V

    .line 834
    .local v2, "packageInfo":Lcom/threatmetrix/TrustDefender/g$h;
    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/g$h;->a()I

    move-result v5

    .line 835
    .local v5, "versionCode":I
    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/g$h;->b()Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, "versionName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v6, :cond_0

    move-object v6, v4

    .end local v6    # "versionName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    move-object v7, v4

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 841
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->h()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "binaryArch":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_2

    .end local v4    # "unknown":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    sget-object v7, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Application Info "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 838
    .end local v0    # "binaryArch":Ljava/lang/String;
    .restart local v4    # "unknown":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    .restart local v0    # "binaryArch":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    .line 843
    goto :goto_1
.end method

.method static c()J
    .locals 6

    .prologue
    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$m;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 816
    .local v0, "bootTime":J
    sget-object v2, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getBootTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-wide v0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ALLOW_MOCK_LOCATION"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/g$k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "mockLocation":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 930
    sget v1, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v2, Lcom/threatmetrix/TrustDefender/g$b$b;->d:I

    if-lt v1, v2, :cond_1

    .line 932
    sget-object v1, Lcom/threatmetrix/TrustDefender/p;->b:Landroid/util/SparseIntArray;

    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/q;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 933
    .local v0, "value":I
    if-eqz v0, :cond_0

    .line 939
    .end local v0    # "value":I
    :goto_0
    return v0

    .line 937
    .restart local v0    # "value":I
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 939
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static d()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xa

    const-wide/16 v8, 0x0

    const/16 v10, 0x14

    .line 858
    new-instance v6, Lcom/threatmetrix/TrustDefender/ah;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/threatmetrix/TrustDefender/ah;-><init>(Ljava/lang/String;)V

    .line 860
    .local v6, "wrapper":Lcom/threatmetrix/TrustDefender/ah;
    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ah;->c()J

    move-result-wide v0

    .line 861
    .local v0, "availableBlocks":J
    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ah;->b()J

    move-result-wide v2

    .line 862
    .local v2, "blockSizeInBytes":J
    const-wide/16 v4, 0x0

    .line 863
    .local v4, "freeSpaceInMeg":J
    cmp-long v7, v0, v8

    if-eqz v7, :cond_0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    .line 870
    mul-long v8, v0, v2

    shr-long/2addr v8, v10

    shl-long/2addr v8, v10

    div-long/2addr v8, v12

    mul-long v4, v8, v12

    .line 873
    :cond_0
    sget-object v7, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Free space on the phone "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-wide v4
.end method

.method static e()J
    .locals 8

    .prologue
    .line 885
    new-instance v4, Lcom/threatmetrix/TrustDefender/ah;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/threatmetrix/TrustDefender/ah;-><init>(Ljava/lang/String;)V

    .line 887
    .local v4, "wrapper":Lcom/threatmetrix/TrustDefender/ah;
    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ah;->a()J

    move-result-wide v0

    .line 888
    .local v0, "blockCount":J
    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ah;->b()J

    move-result-wide v2

    .line 890
    .local v2, "blockSizeInBytes":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 950
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->b()Z

    move-result v23

    if-nez v23, :cond_0

    .line 952
    const/16 v23, 0x0

    .line 1121
    :goto_0
    return-object v23

    .line 961
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "phone"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 962
    .local v21, "telephonyService":Ljava/lang/Object;
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/telephony/TelephonyManager;

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 964
    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .line 966
    :cond_2
    move-object/from16 v0, v21

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 980
    .local v20, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 985
    .local v5, "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    .line 986
    .local v17, "no":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v15

    .line 987
    .local v15, "ncIso":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v18

    .line 988
    .local v18, "non":Ljava/lang/String;
    if-eqz v17, :cond_3

    const-string v23, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    const-string v23, "no"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_3
    if-eqz v18, :cond_4

    const-string v23, ""

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "non"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_4
    if-eqz v15, :cond_5

    const-string v23, ""

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, "nc_iso"

    move-object/from16 v0, v23

    invoke-interface {v5, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1002
    .end local v15    # "ncIso":Ljava/lang/String;
    .end local v17    # "no":Ljava/lang/String;
    .end local v18    # "non":Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v19, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v23, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct/range {v23 .. v23}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 1003
    .local v19, "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    const-string v23, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1004
    .local v9, "finePermission":Z
    const-string v23, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1006
    .local v6, "coarsePermission":Z
    if-nez v9, :cond_6

    if-eqz v6, :cond_13

    .line 1018
    :cond_6
    sget v23, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v24, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 1020
    invoke-static/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 1021
    .local v3, "api18Info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_7

    .line 1023
    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1027
    .end local v3    # "api18Info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->c()Z

    move-result v23

    if-nez v23, :cond_8

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->d()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1030
    :cond_8
    const/4 v4, 0x0

    .line 1033
    .local v4, "cellLocation":Landroid/telephony/CellLocation;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v4

    .line 1045
    :goto_2
    if-eqz v4, :cond_b

    .line 1048
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1050
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v14

    check-cast v14, Landroid/telephony/gsm/GsmCellLocation;

    .line 1051
    .local v14, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v14}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v22

    .line 1052
    .local v22, "temp":I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    const-string v23, "lac"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :cond_9
    invoke-virtual {v14}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v22

    .line 1054
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const-string v23, "cid"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_a
    invoke-virtual {v14}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v22

    .line 1056
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const-string v23, "psc"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .end local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .end local v14    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .end local v22    # "temp":I
    :cond_b
    :goto_3
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->e()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1075
    const/16 v16, 0x0

    .line 1079
    .local v16, "nci":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :try_start_3
    const-class v23, Landroid/telephony/TelephonyManager;

    const-string v24, "getNeighboringCellInfo"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1080
    .local v10, "getNeighboringCellInfo":Ljava/lang/reflect/Method;
    if-eqz v10, :cond_c

    .line 1082
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v10, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1083
    .local v13, "list":Ljava/lang/Object;
    if-eqz v13, :cond_c

    instance-of v0, v13, Ljava/util/List;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1085
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    move-object/from16 v16, v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 1099
    .end local v10    # "getNeighboringCellInfo":Ljava/lang/reflect/Method;
    .end local v13    # "list":Ljava/lang/Object;
    :cond_c
    :goto_4
    if-eqz v16, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_13

    .line 1101
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 1104
    .local v12, "info":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v23

    const/16 v24, 0x63

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const-string v23, "cid"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_e

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const-string v23, "bsid"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1108
    :cond_e
    const-string v23, "sl_ASU"

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 971
    .end local v5    # "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "coarsePermission":Z
    .end local v9    # "finePermission":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/telephony/NeighboringCellInfo;
    .end local v16    # "nci":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v19    # "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    .end local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v21    # "telephonyService":Ljava/lang/Object;
    :catch_0
    move-exception v23

    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 972
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 974
    :catch_1
    move-exception v7

    .line 976
    .local v7, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 992
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v21    # "telephonyService":Ljava/lang/Object;
    :catch_2
    move-exception v7

    .line 995
    .local v7, "e":Ljava/lang/SecurityException;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 997
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 999
    .local v7, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1035
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .restart local v6    # "coarsePermission":Z
    .restart local v9    # "finePermission":Z
    .restart local v19    # "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    :catch_4
    move-exception v8

    .line 1038
    .local v8, "ex":Ljava/lang/SecurityException;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto/16 :goto_2

    .line 1040
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_5
    move-exception v7

    .line 1042
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1058
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_f
    instance-of v0, v4, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1060
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v14

    check-cast v14, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1061
    .local v14, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v22

    .line 1062
    .restart local v22    # "temp":I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    const-string v23, "sid"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    :cond_10
    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v22

    .line 1064
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    const-string v23, "bsid"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :cond_11
    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v22

    .line 1066
    const v23, 0x7fffffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    const-string v23, "bs_lat"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_12
    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v22

    .line 1068
    const v23, 0x7fffffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const-string v23, "bs_lng"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1089
    .end local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .end local v14    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v22    # "temp":I
    .restart local v16    # "nci":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_6
    move-exception v8

    .line 1092
    .restart local v8    # "ex":Ljava/lang/SecurityException;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto/16 :goto_4

    .line 1094
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_7
    move-exception v7

    .line 1096
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1115
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "nci":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_13
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_14

    .line 1117
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 1121
    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    const-string v0, "android"

    return-object v0
.end method

.method static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1130
    new-instance v0, Lcom/threatmetrix/TrustDefender/l;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/l;-><init>()V

    invoke-virtual {v0, p0}, Lcom/threatmetrix/TrustDefender/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    const-string v0, "Android"

    return-object v0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1142
    new-instance v7, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v11, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v11}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v7, v11, p0}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 1143
    .local v7, "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    const-string v11, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1148
    .local v10, "telephonyService":Ljava/lang/Object;
    if-eqz v10, :cond_4

    instance-of v11, v10, Landroid/telephony/TelephonyManager;

    if-eqz v11, :cond_4

    .line 1150
    move-object v0, v10

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v9, v0

    .line 1152
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1162
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "di"

    invoke-static {v11, v12, v13, v8}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 1163
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "ln"

    invoke-static {v11, v12, v13, v8}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 1164
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "ss"

    invoke-static {v11, v12, v13, v8}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 1165
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "si"

    invoke-static {v11, v12, v13, v8}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 1166
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "vn"

    invoke-static {v11, v12, v13, v8}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 1167
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "sv"

    invoke-static {v11, v12, v13, v8}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 1169
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "VoiceMail"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1172
    const-string v11, "VMAlphaTag"

    invoke-interface {v8, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    :cond_0
    sget v11, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    const/16 v12, 0x16

    if-lt v11, v12, :cond_1

    .line 1181
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/s;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1185
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1186
    .local v5, "json":Lorg/json/JSONObject;
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1190
    .local v6, "key":Ljava/lang/String;
    :try_start_1
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v3

    .line 1195
    .local v3, "exception":Lorg/json/JSONException;
    :try_start_2
    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Can\'t create JSON: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    const-string v11, ""

    .line 1215
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "exception":Lorg/json/JSONException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v10    # "telephonyService":Ljava/lang/Object;
    :goto_1
    return-object v11

    .line 1198
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v10    # "telephonyService":Ljava/lang/Object;
    :cond_2
    instance-of v11, v5, Lorg/json/JSONObject;

    if-nez v11, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    check-cast v5, Lorg/json/JSONObject;

    .end local v5    # "json":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    goto :goto_1

    .line 1205
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v10    # "telephonyService":Ljava/lang/Object;
    :catch_1
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    .line 1206
    const-string v11, ""

    goto :goto_1

    .line 1208
    :catch_2
    move-exception v2

    .line 1210
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v11, ""

    goto :goto_1

    .line 1215
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v11, ""

    goto :goto_1
.end method

.method static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1223
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->b()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1225
    const/4 v3, 0x0

    .line 1320
    :cond_0
    :goto_0
    return-object v3

    .line 1228
    :cond_1
    const/4 v3, 0x0

    .line 1230
    .local v3, "cellId":Ljava/lang/String;
    new-instance v13, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v17, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct/range {v17 .. v17}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 1231
    .local v13, "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    const-string v17, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1232
    .local v9, "finePermission":Z
    const-string v17, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1234
    .local v7, "coarsePermission":Z
    if-nez v9, :cond_2

    if-eqz v7, :cond_0

    .line 1237
    :cond_2
    sget v17, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v18, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 1239
    invoke-static/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1243
    :cond_3
    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->c()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->d()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1249
    :cond_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 1250
    .local v16, "telephonyService":Ljava/lang/Object;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/telephony/TelephonyManager;

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 1252
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1254
    :cond_6
    move-object/from16 v0, v16

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1256
    .local v15, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    .line 1259
    .local v5, "cellLocation":Landroid/telephony/CellLocation;
    :try_start_1
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1271
    :goto_1
    if-eqz v5, :cond_0

    .line 1273
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    .local v4, "cellInfo":Ljava/lang/StringBuilder;
    instance-of v0, v5, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1277
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v11

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    .line 1278
    .local v11, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 1279
    .local v6, "cid":I
    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 1281
    .local v10, "lac":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_7

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1264
    .end local v4    # "cellInfo":Ljava/lang/StringBuilder;
    .end local v6    # "cid":I
    .end local v10    # "lac":I
    .end local v11    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :catch_0
    move-exception v17

    sget-object v17, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto :goto_1

    .line 1266
    :catch_1
    move-exception v8

    .line 1268
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 1311
    .end local v5    # "cellLocation":Landroid/telephony/CellLocation;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v16    # "telephonyService":Ljava/lang/Object;
    :catch_2
    move-exception v17

    sget-object v17, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 1283
    .restart local v4    # "cellInfo":Ljava/lang/StringBuilder;
    .restart local v5    # "cellLocation":Landroid/telephony/CellLocation;
    .restart local v6    # "cid":I
    .restart local v10    # "lac":I
    .restart local v11    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v15    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v16    # "telephonyService":Ljava/lang/Object;
    :cond_7
    :try_start_3
    const-string v17, "GSM:"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1285
    :cond_8
    const-string v17, ":::"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1287
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1289
    .end local v6    # "cid":I
    .end local v10    # "lac":I
    .end local v11    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_a
    instance-of v0, v5, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1291
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v11

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1292
    .local v11, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    .line 1293
    .local v2, "bid":I
    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v14

    .line 1294
    .local v14, "sid":I
    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v12

    .line 1296
    .local v12, "nid":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1298
    :cond_b
    const-string v17, "CDMA:"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    :cond_c
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_d

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1302
    :cond_d
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_e

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1304
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    goto/16 :goto_0

    .line 1313
    .end local v2    # "bid":I
    .end local v4    # "cellInfo":Ljava/lang/StringBuilder;
    .end local v5    # "cellLocation":Landroid/telephony/CellLocation;
    .end local v11    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v12    # "nid":I
    .end local v14    # "sid":I
    .end local v15    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v16    # "telephonyService":Ljava/lang/Object;
    :catch_3
    move-exception v8

    .line 1315
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/threatmetrix/TrustDefender/p;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
