.class Lcom/threatmetrix/TrustDefender/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/f$1;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/threatmetrix/TrustDefender/f;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/f;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private static a(Landroid/telephony/CellInfo;)Lcom/threatmetrix/TrustDefender/p$a;
    .locals 1
    .param p0, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    .line 260
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/threatmetrix/TrustDefender/p$a;->e:Lcom/threatmetrix/TrustDefender/p$a;

    .line 277
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_1

    .line 266
    sget-object v0, Lcom/threatmetrix/TrustDefender/p$a;->b:Lcom/threatmetrix/TrustDefender/p$a;

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_2

    .line 270
    sget-object v0, Lcom/threatmetrix/TrustDefender/p$a;->c:Lcom/threatmetrix/TrustDefender/p$a;

    goto :goto_0

    .line 272
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_3

    .line 274
    sget-object v0, Lcom/threatmetrix/TrustDefender/p$a;->a:Lcom/threatmetrix/TrustDefender/p$a;

    goto :goto_0

    .line 277
    :cond_3
    sget-object v0, Lcom/threatmetrix/TrustDefender/p$a;->d:Lcom/threatmetrix/TrustDefender/p$a;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
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
    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v1, "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/f;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CellInfo;

    .line 51
    .local v8, "info":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 54
    sget-object v9, Lcom/threatmetrix/TrustDefender/f$1;->a:[I

    invoke-static {v8}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/telephony/CellInfo;)Lcom/threatmetrix/TrustDefender/p$a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/threatmetrix/TrustDefender/p$a;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 77
    .end local v8    # "info":Landroid/telephony/CellInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 85
    .end local v1    # "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1

    .restart local v1    # "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "info":Landroid/telephony/CellInfo;
    :pswitch_0
    move-object v9, v8

    .line 57
    check-cast v9, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v9}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v6

    .line 58
    .local v6, "css":Landroid/telephony/CellSignalStrength;
    check-cast v8, Landroid/telephony/CellInfoWcdma;

    .end local v8    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 59
    .local v5, "ciw":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v1}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/telephony/CellSignalStrength;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .end local v5    # "ciw":Landroid/telephony/CellIdentityWcdma;
    .end local v6    # "css":Landroid/telephony/CellSignalStrength;
    .restart local v8    # "info":Landroid/telephony/CellInfo;
    :pswitch_1
    move-object v9, v8

    .line 62
    check-cast v9, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v9}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    .line 63
    .restart local v6    # "css":Landroid/telephony/CellSignalStrength;
    check-cast v8, Landroid/telephony/CellInfoGsm;

    .end local v8    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 64
    .local v3, "cig":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v1}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/telephony/CellSignalStrength;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .end local v3    # "cig":Landroid/telephony/CellIdentityGsm;
    .end local v6    # "css":Landroid/telephony/CellSignalStrength;
    .restart local v8    # "info":Landroid/telephony/CellInfo;
    :pswitch_2
    move-object v9, v8

    .line 67
    check-cast v9, Landroid/telephony/CellInfoLte;

    invoke-virtual {v9}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    .line 68
    .restart local v6    # "css":Landroid/telephony/CellSignalStrength;
    check-cast v8, Landroid/telephony/CellInfoLte;

    .end local v8    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    .line 69
    .local v4, "cil":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v1}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/telephony/CellSignalStrength;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .end local v4    # "cil":Landroid/telephony/CellIdentityLte;
    .end local v6    # "css":Landroid/telephony/CellSignalStrength;
    .restart local v8    # "info":Landroid/telephony/CellInfo;
    :pswitch_3
    move-object v9, v8

    .line 72
    check-cast v9, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v9}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v6

    .line 73
    .restart local v6    # "css":Landroid/telephony/CellSignalStrength;
    check-cast v8, Landroid/telephony/CellInfoCdma;

    .end local v8    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 74
    .local v2, "cic":Landroid/telephony/CellIdentityCdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v1}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/telephony/CellSignalStrength;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/telephony/CellSignalStrength;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "cellSignalStrength"    # Landroid/telephony/CellSignalStrength;
    .param p1, "cellIdentityInfo"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellSignalStrength;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p2, "cellTowerInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    .line 291
    const-string v0, "sl_ASU"

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    const-string v0, "ss_dBm"

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "sl_int"

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "cii"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v2, "cellId":Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/f;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 94
    .local v3, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v11, 0x1

    .line 96
    .local v11, "isFirst":Z
    sget-object v16, Lcom/threatmetrix/TrustDefender/p$a;->c:Lcom/threatmetrix/TrustDefender/p$a;

    .line 98
    .local v16, "typeOfFirstMatch":Lcom/threatmetrix/TrustDefender/p$a;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 100
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/CellInfo;

    .line 102
    .local v10, "info":Landroid/telephony/CellInfo;
    invoke-virtual {v10}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 104
    invoke-static {v10}, Lcom/threatmetrix/TrustDefender/f;->a(Landroid/telephony/CellInfo;)Lcom/threatmetrix/TrustDefender/p$a;

    move-result-object v15

    .line 106
    .local v15, "type":Lcom/threatmetrix/TrustDefender/p$a;
    if-eqz v11, :cond_1

    .line 108
    const/4 v11, 0x0

    .line 114
    :goto_1
    move-object/from16 v16, v15

    .line 119
    sget-object v17, Lcom/threatmetrix/TrustDefender/f$1;->a:[I

    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/p$a;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    check-cast v10, Landroid/telephony/CellInfoWcdma;

    .end local v10    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v10}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    .line 170
    .local v7, "ciw":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v9

    .line 171
    .local v9, "id":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v13

    .line 172
    .local v13, "mcc":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v14

    .line 173
    .local v14, "mnc":I
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v12

    .line 174
    .local v12, "lac":I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    .line 177
    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/p$a;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 112
    .end local v7    # "ciw":Landroid/telephony/CellIdentityWcdma;
    .end local v9    # "id":I
    .end local v12    # "lac":I
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .restart local v10    # "info":Landroid/telephony/CellInfo;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/threatmetrix/TrustDefender/p$a;->b()I

    move-result v17

    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/p$a;->b()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    goto/16 :goto_1

    .line 122
    :pswitch_1
    check-cast v10, Landroid/telephony/CellInfoCdma;

    .end local v10    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v10}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    .line 123
    .local v4, "cic":Landroid/telephony/CellIdentityCdma;
    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v9

    .line 124
    .restart local v9    # "id":I
    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v14

    .line 125
    .restart local v14    # "mnc":I
    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v12

    .line 126
    .restart local v12    # "lac":I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    .line 129
    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/p$a;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 137
    .end local v4    # "cic":Landroid/telephony/CellIdentityCdma;
    .end local v9    # "id":I
    .end local v12    # "lac":I
    .end local v14    # "mnc":I
    .restart local v10    # "info":Landroid/telephony/CellInfo;
    :pswitch_2
    check-cast v10, Landroid/telephony/CellInfoGsm;

    .end local v10    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v10}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 138
    .local v5, "cig":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v9

    .line 139
    .restart local v9    # "id":I
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v13

    .line 140
    .restart local v13    # "mcc":I
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v14

    .line 141
    .restart local v14    # "mnc":I
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v12

    .line 142
    .restart local v12    # "lac":I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    .line 145
    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/p$a;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 153
    .end local v5    # "cig":Landroid/telephony/CellIdentityGsm;
    .end local v9    # "id":I
    .end local v12    # "lac":I
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .restart local v10    # "info":Landroid/telephony/CellInfo;
    :pswitch_3
    check-cast v10, Landroid/telephony/CellInfoLte;

    .end local v10    # "info":Landroid/telephony/CellInfo;
    invoke-virtual {v10}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    .line 154
    .local v6, "cil":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v9

    .line 155
    .restart local v9    # "id":I
    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v13

    .line 156
    .restart local v13    # "mcc":I
    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v14

    .line 157
    .restart local v14    # "mnc":I
    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v12

    .line 158
    .restart local v12    # "lac":I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    .line 161
    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/p$a;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 189
    .end local v6    # "cil":Landroid/telephony/CellIdentityLte;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "id":I
    .end local v12    # "lac":I
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .end local v15    # "type":Lcom/threatmetrix/TrustDefender/p$a;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$n;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v1

    .line 221
    :cond_1
    :try_start_0
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 222
    .local v4, "systemService":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_0

    .line 227
    move-object v0, v4

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v5, v0

    .line 228
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    sget v6, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v7, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    if-lt v6, v7, :cond_0

    .line 239
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 240
    .local v1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    goto :goto_0

    .line 243
    .end local v1    # "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v4    # "systemService":Ljava/lang/Object;
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 246
    .local v3, "ex":Ljava/lang/SecurityException;
    sget-object v6, Lcom/threatmetrix/TrustDefender/f;->a:Ljava/lang/String;

    goto :goto_0

    .line 248
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/threatmetrix/TrustDefender/f;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
