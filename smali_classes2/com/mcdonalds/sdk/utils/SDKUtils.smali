.class public Lcom/mcdonalds/sdk/utils/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field public static final EPSILON:D = 1.0E-4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/utils/SDKUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForUpdates(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p0, "connection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p1, "appBuildConfigVersionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWForceUpdateRequest;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWForceUpdateRequest;-><init>()V

    new-instance v1, Lcom/mcdonalds/sdk/utils/SDKUtils$1;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/utils/SDKUtils$1;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 70
    return-void
.end method

.method private static compareVersions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "versionNow"    # Ljava/lang/String;
    .param p1, "referenceVersion"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    const-string v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "versionNowComponents":[Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "referenceVersionComponents":[Ljava/lang/String;
    array-length v8, v5

    array-length v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 82
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 83
    array-length v8, v5

    if-ge v0, v8, :cond_0

    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, "nowDigit":I
    :goto_1
    array-length v8, v4

    if-ge v0, v8, :cond_1

    aget-object v8, v4, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "refDigit":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 93
    .end local v2    # "nowDigit":I
    .end local v3    # "refDigit":I
    :goto_3
    return v6

    :cond_0
    move v2, v6

    .line 83
    goto :goto_1

    .restart local v2    # "nowDigit":I
    :cond_1
    move v3, v6

    .line 84
    goto :goto_2

    .line 88
    .restart local v3    # "refDigit":I
    :cond_2
    if-le v2, v3, :cond_3

    move v6, v7

    .line 89
    goto :goto_3

    .line 82
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "nowDigit":I
    .end local v3    # "refDigit":I
    :cond_4
    move v6, v7

    .line 93
    goto :goto_3
.end method

.method public static doubleEquals(DD)Z
    .locals 4
    .param p0, "left"    # D
    .param p2, "right"    # D

    .prologue
    .line 106
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestConfig(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p0, "connection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/Map;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;-><init>()V

    new-instance v1, Lcom/mcdonalds/sdk/utils/SDKUtils$2;

    invoke-direct {v1, p1}, Lcom/mcdonalds/sdk/utils/SDKUtils$2;-><init>(Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 103
    return-void
.end method
