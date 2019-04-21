.class public Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "EasyAddressConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/DeliveryConnector;


# static fields
.field public static final NAME:Ljava/lang/String; = "easyaddress"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;->setContext(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private customerToEasyAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lhk/com/aisoft/easyaddrui/Address;
    .locals 8
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    .line 74
    new-instance v1, Lhk/com/aisoft/easyaddrui/Address;

    invoke-direct {v1}, Lhk/com/aisoft/easyaddrui/Address;-><init>()V

    .line 75
    .local v1, "easyAddress":Lhk/com/aisoft/easyaddrui/Address;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 77
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 79
    .local v2, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;->getElementAlias(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "elementAlias":Ljava/lang/String;
    sget-object v6, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 76
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :pswitch_0
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    goto :goto_1

    .line 87
    :pswitch_1
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    goto :goto_1

    .line 90
    :pswitch_2
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    goto :goto_1

    .line 93
    :pswitch_3
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    goto :goto_1

    .line 96
    :pswitch_4
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    goto :goto_1

    .line 99
    :pswitch_5
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    goto :goto_1

    .line 102
    :pswitch_6
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    goto :goto_1

    .line 105
    :pswitch_7
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    goto :goto_1

    .line 108
    :pswitch_8
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sAddrE:Ljava/lang/String;

    goto :goto_1

    .line 111
    :pswitch_9
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    goto :goto_1

    .line 114
    :pswitch_a
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    goto :goto_1

    .line 117
    :pswitch_b
    iput-object v3, v1, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    goto :goto_1

    .line 125
    .end local v2    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .end local v3    # "elementAlias":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getElementAlias(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Ljava/lang/String;
    .locals 6
    .param p1, "element"    # Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "addressAliasValues":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    .line 135
    .local v3, "value":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAliasType()Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    if-ne v4, v5, :cond_0

    .line 136
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 140
    .end local v3    # "value":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    :goto_1
    return-object v4

    .line 132
    .restart local v3    # "value":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "value":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method


# virtual methods
.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 6
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "deliveryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 40
    .local p4, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "deliveryTime"    # Ljava/util/Date;
    .param p4, "isNormalOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 48
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lhk/com/aisoft/easyaddrui/eaView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "easyAddressView":Lhk/com/aisoft/easyaddrui/eaView;
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;->customerToEasyAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lhk/com/aisoft/easyaddrui/Address;

    move-result-object v0

    .line 51
    .local v0, "eaAddress":Lhk/com/aisoft/easyaddrui/Address;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;

    invoke-direct {v2, p0, p3, p4, p5}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;-><init>(Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lhk/com/aisoft/easyaddrui/eaView;->getStore(Lhk/com/aisoft/easyaddrui/Address;Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;)V

    .line 69
    const/4 v2, 0x0

    return-object v2
.end method
