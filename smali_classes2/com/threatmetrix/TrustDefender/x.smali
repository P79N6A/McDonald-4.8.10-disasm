.class Lcom/threatmetrix/TrustDefender/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/x$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 40
    const-class v7, Lcom/threatmetrix/TrustDefender/x;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    .line 47
    new-instance v7, Landroid/util/SparseArray;

    const/16 v9, 0x1e

    invoke-direct {v7, v9}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v7, Lcom/threatmetrix/TrustDefender/x;->f:Landroid/util/SparseArray;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "currentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 55
    .local v6, "value":Ljava/lang/Object;
    const-string v7, "android.net.ConnectivityManager"

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "connectivityManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "fieldName":Ljava/lang/String;
    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "TYPE_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v2    # "fieldName":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v6    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    .local v5, "type":Ljava/lang/String;
    invoke-static {v0, v5, v8}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 74
    sget-object v9, Lcom/threatmetrix/TrustDefender/x;->f:Landroid/util/SparseArray;

    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v8

    :goto_2
    invoke-virtual {v9, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v7, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v11, "type"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "type"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    const-string v11, "_"

    const-string v12, " "

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 78
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "type":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    .line 43
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    .line 44
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    .line 45
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->i()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefender/x;->a([Ljava/lang/String;)V

    .line 104
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 106
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/threatmetrix/TrustDefender/x;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefender/x;->a([Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 109
    :cond_1
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$g;->c()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_d

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "wifiInfo"

    invoke-virtual {v8, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/threatmetrix/TrustDefender/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/threatmetrix/TrustDefender/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    if-eqz v8, :cond_2

    aput-object v8, v6, v12

    :cond_2
    if-eqz v9, :cond_3

    aput-object v9, v6, v11

    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v13

    sget-object v5, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v14

    aget-object v5, v6, v12

    if-eqz v5, :cond_c

    aget-object v5, v6, v11

    if-eqz v5, :cond_c

    aget-object v5, v6, v13

    if-eqz v5, :cond_c

    move-object v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefender/x;->a([Ljava/lang/String;)V

    .line 111
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 113
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/threatmetrix/TrustDefender/x;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/threatmetrix/TrustDefender/x;->a([Ljava/lang/String;)V

    .line 116
    :cond_5
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 118
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->k()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 126
    :try_start_0
    const-string v5, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, "telephonyService":Ljava/lang/Object;
    if-eqz v4, :cond_7

    instance-of v5, v4, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_7

    .line 129
    move-object v0, v4

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v3, v0

    .line 130
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 131
    .local v1, "dataState":I
    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_6

    if-ne v1, v14, :cond_7

    .line 135
    :cond_6
    sget-object v5, Lcom/threatmetrix/TrustDefender/x$a;->b:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v1    # "dataState":I
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    .line 154
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    .line 155
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    .line 162
    .end local v4    # "telephonyService":Ljava/lang/Object;
    :cond_8
    :goto_1
    sget-object v5, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Network Info (Final values) BSSID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RSSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    return-void

    .line 109
    :cond_9
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v5, "networkInfo"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_c

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "bssid"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    aput-object v5, v6, v12

    :cond_a
    if-eqz v9, :cond_b

    aput-object v9, v6, v11

    :cond_b
    sget-object v5, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v14

    :cond_c
    move-object v5, v6

    goto/16 :goto_0

    :cond_d
    move-object v5, v7

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v5

    :try_start_1
    sget-object v5, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    .line 154
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    .line 155
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    goto :goto_1

    .line 146
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    .line 154
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    .line 155
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    .line 154
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    .line 155
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    throw v5
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x0

    .line 423
    if-eqz p0, :cond_0

    const-string v1, "unknown ssid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 431
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 435
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)V
    .locals 6
    .param p1, "networkInfo"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 455
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    aget-object v0, p1, v3

    if-eqz v0, :cond_1

    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    aget-object v0, p1, v4

    if-eqz v0, :cond_2

    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    aget-object v0, p1, v5

    if-eqz v0, :cond_3

    aget-object v0, p1, v5

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    .line 460
    :cond_3
    return-void
.end method

.method private a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$g;->b()Z

    move-result v12

    if-nez v12, :cond_1

    .line 277
    const/4 v7, 0x0

    .line 368
    :cond_0
    :goto_0
    return-object v7

    .line 279
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 283
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_f

    .line 285
    const/4 v12, 0x4

    new-array v7, v12, [Ljava/lang/String;

    .line 286
    .local v7, "networkInfo":[Ljava/lang/String;
    const-string v12, "networkType"

    const/16 v13, -0x63

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 287
    .local v10, "typeCode":I
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 289
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 293
    const-string v12, "networkInfo"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 294
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    .line 297
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    .line 298
    .local v9, "state":Landroid/net/NetworkInfo$State;
    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v9, v12, :cond_2

    .line 300
    const/4 v7, 0x0

    goto :goto_0

    .line 304
    :cond_2
    const/16 v12, -0x63

    if-ne v10, v12, :cond_3

    .line 308
    :try_start_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 324
    .end local v9    # "state":Landroid/net/NetworkInfo$State;
    :cond_3
    sget-object v12, Lcom/threatmetrix/TrustDefender/x;->f:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 326
    .local v11, "typeName":Ljava/lang/String;
    if-eqz v11, :cond_e

    .line 328
    if-eqz v10, :cond_4

    sget-object v12, Lcom/threatmetrix/TrustDefender/x$a;->c:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v12}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 331
    :cond_4
    const/4 v12, 0x3

    sget-object v13, Lcom/threatmetrix/TrustDefender/x$a;->b:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v13}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    goto :goto_0

    .line 312
    .end local v11    # "typeName":Ljava/lang/String;
    .restart local v9    # "state":Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v12

    sget-object v12, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    .line 313
    const/4 v7, 0x0

    goto :goto_0

    .line 315
    :catch_1
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v7, 0x0

    goto :goto_0

    .line 333
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "state":Landroid/net/NetworkInfo$State;
    .restart local v11    # "typeName":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x1

    if-eq v10, v12, :cond_6

    sget-object v12, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v12}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 337
    :cond_6
    const/4 v12, 0x3

    sget-object v13, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v13}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 339
    if-nez v4, :cond_8

    const/4 v8, 0x0

    .line 340
    .local v8, "ssid":Ljava/lang/String;
    :goto_1
    const-string v12, "bssid"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/threatmetrix/TrustDefender/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v1, :cond_7

    const/4 v12, 0x0

    aput-object v1, v7, v12

    .line 343
    :cond_7
    if-eqz v8, :cond_0

    const/4 v12, 0x1

    aput-object v8, v7, v12

    goto/16 :goto_0

    .line 339
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v8    # "ssid":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/threatmetrix/TrustDefender/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 345
    :cond_9
    const/4 v12, 0x7

    if-eq v10, v12, :cond_a

    sget-object v12, Lcom/threatmetrix/TrustDefender/x$a;->a:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v12}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 348
    :cond_a
    const/4 v12, 0x3

    sget-object v13, Lcom/threatmetrix/TrustDefender/x$a;->a:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v13}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    goto/16 :goto_0

    .line 350
    :cond_b
    const/16 v12, 0x9

    if-eq v10, v12, :cond_c

    sget-object v12, Lcom/threatmetrix/TrustDefender/x$a;->e:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v12}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 353
    :cond_c
    const/4 v12, 0x3

    sget-object v13, Lcom/threatmetrix/TrustDefender/x$a;->e:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v13}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    goto/16 :goto_0

    .line 357
    :cond_d
    sget-object v12, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    const-string v13, "Unexpected connection type {}"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v12, v13, v14}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 358
    const/4 v12, 0x3

    aput-object v11, v7, v12

    goto/16 :goto_0

    .line 363
    :cond_e
    sget-object v12, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    const-string v13, "Unexpected connection type code {}"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "info":Landroid/net/NetworkInfo;
    .end local v7    # "networkInfo":[Ljava/lang/String;
    .end local v10    # "typeCode":I
    .end local v11    # "typeName":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bssid"    # Ljava/lang/String;

    .prologue
    .line 444
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "00:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 373
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$g;->d()Z

    move-result v11

    if-nez v11, :cond_0

    move-object v4, v10

    .line 418
    :goto_0
    return-object v4

    .line 377
    :cond_0
    new-instance v3, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v11, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v11}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v3, v11, p1}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 378
    .local v3, "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    const-string v11, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 382
    :try_start_0
    const-string v11, "wifi"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 383
    .local v9, "wifiService":Ljava/lang/Object;
    if-eqz v9, :cond_1

    instance-of v11, v9, Landroid/net/wifi/WifiManager;

    if-nez v11, :cond_2

    :cond_1
    move-object v4, v10

    .line 385
    goto :goto_0

    .line 387
    :cond_2
    move-object v0, v9

    check-cast v0, Landroid/net/wifi/WifiManager;

    move-object v8, v0

    .line 388
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 390
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/threatmetrix/TrustDefender/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "bssid":Ljava/lang/String;
    if-nez v1, :cond_3

    move-object v4, v10

    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/threatmetrix/TrustDefender/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, "ssid":Ljava/lang/String;
    if-nez v6, :cond_4

    move-object v4, v10

    goto :goto_0

    .line 396
    :cond_4
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 398
    .local v5, "rssi":I
    const/4 v11, 0x4

    new-array v4, v11, [Ljava/lang/String;

    .line 399
    .local v4, "result":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v1, v4, v11

    .line 400
    const/4 v11, 0x1

    aput-object v6, v4, v11

    .line 401
    const/4 v11, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 402
    const/4 v11, 0x3

    sget-object v12, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v12}, Lcom/threatmetrix/TrustDefender/x$a;->a()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 409
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v4    # "result":[Ljava/lang/String;
    .end local v5    # "rssi":I
    .end local v6    # "ssid":Ljava/lang/String;
    .end local v7    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v9    # "wifiService":Ljava/lang/Object;
    :catch_0
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    move-object v4, v10

    .line 410
    goto :goto_0

    .line 412
    :catch_1
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/threatmetrix/TrustDefender/x;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    .line 415
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v4, v10

    .line 418
    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/threatmetrix/TrustDefender/x;

    if-nez v2, :cond_2

    .line 467
    :cond_0
    const/4 v0, 0x0

    .line 481
    :cond_1
    :goto_0
    return v0

    .line 469
    :cond_2
    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 471
    :cond_3
    const/4 v0, 0x1

    .local v0, "isEqual":Z
    move-object v1, p1

    .line 472
    check-cast v1, Lcom/threatmetrix/TrustDefender/x;

    .line 473
    .local v1, "other":Lcom/threatmetrix/TrustDefender/x;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/threatmetrix/TrustDefender/x;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 474
    :cond_5
    const/4 v0, 0x0

    .line 475
    :cond_6
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    iget-object v3, v1, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/threatmetrix/TrustDefender/x;->e:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 476
    :cond_8
    const/4 v0, 0x0

    .line 477
    :cond_9
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    iget-object v3, v1, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/threatmetrix/TrustDefender/x;->d:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 478
    :cond_b
    const/4 v0, 0x0

    .line 479
    :cond_c
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/threatmetrix/TrustDefender/x;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 480
    :cond_e
    const/4 v0, 0x0

    goto :goto_0
.end method
