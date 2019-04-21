.class Lcom/threatmetrix/TrustDefender/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/threatmetrix/TrustDefender/s;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/s;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v10, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v12, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    const/16 v13, 0x16

    if-lt v12, v13, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->f()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v2, "actives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v11

    .line 39
    .local v11, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez v11, :cond_1

    .line 103
    .end local v2    # "actives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_0
    :goto_0
    return-object v10

    .line 47
    .restart local v2    # "actives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_1
    :try_start_0
    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "activeSims":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 52
    .local v8, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    .line 54
    .local v7, "idx":I
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cna"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 55
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "dna"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 56
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ssa"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 57
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "na"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 58
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ca"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 59
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ra"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "disabled"

    :goto_2
    invoke-interface {v10, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 96
    .end local v1    # "activeSims":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "idx":I
    .end local v8    # "info":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v12

    sget-object v12, Lcom/threatmetrix/TrustDefender/s;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 59
    .restart local v1    # "activeSims":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "idx":I
    .restart local v8    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    :try_start_1
    const-string v12, "enabled"

    goto :goto_2

    .line 66
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "idx":I
    .end local v8    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const-class v12, Landroid/telephony/SubscriptionManager;

    const-string v13, "getAllSubscriptionInfoList"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-static {v12, v13, v14}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 67
    .local v5, "getAllSubscribersInfo":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 69
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v5, v12}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 70
    .local v9, "list":Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v12, v9, Ljava/util/List;

    if-eqz v12, :cond_0

    .line 72
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 73
    .local v3, "allSims":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 76
    :cond_4
    const/4 v7, 0x0

    .line 77
    .restart local v7    # "idx":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 79
    .restart local v8    # "info":Landroid/telephony/SubscriptionInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 81
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cno"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 82
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "dno"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 83
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "sso"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 84
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "no"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 85
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "co"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 86
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ro"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "disabled"

    :goto_4
    invoke-interface {v10, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 86
    :cond_6
    const-string v12, "enabled"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 98
    .end local v1    # "activeSims":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v3    # "allSims":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v5    # "getAllSubscribersInfo":Ljava/lang/reflect/Method;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "idx":I
    .end local v8    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "list":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/threatmetrix/TrustDefender/s;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
