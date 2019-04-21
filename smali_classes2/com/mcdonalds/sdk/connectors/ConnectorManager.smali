.class public Lcom/mcdonalds/sdk/connectors/ConnectorManager;
.super Ljava/lang/Object;
.source "ConnectorManager.java"


# static fields
.field private static final CONNECTOR:Ljava/lang/String; = "Connector"

.field private static final CONNECTOR_CONFIGS_PATH:Ljava/lang/String; = "connectors"

.field public static final MCD_CONNECTORS_RELOADED_NOTIFICATION:Ljava/lang/String; = "com.mcdonalds.notification.MCD_MODULES_RELOADED_NOTIFICATION"

.field private static mSharedInstance:Lcom/mcdonalds/sdk/connectors/ConnectorManager;


# instance fields
.field private mConnectorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/BaseConnector;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getConnector(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "implementation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getSharedInstance()Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnectorImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getConnectorForName(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/BaseConnector;
    .locals 2
    .param p1, "connectorName"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Valid Connector found for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->fatal(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 107
    :sswitch_0
    const-string v1, "autonavi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "easyaddress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "google"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "middleware"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "middlewarestorelocator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "baidu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "mwcustomersecurity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "cybersource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "cybersourcesecurity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 109
    :pswitch_0
    new-instance v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 111
    :pswitch_1
    new-instance v0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 113
    :pswitch_2
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 115
    :pswitch_3
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 117
    :pswitch_4
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 119
    :pswitch_5
    new-instance v0, Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/baidu/BaiduConnector;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 121
    :pswitch_6
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 123
    :pswitch_7
    new-instance v0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 125
    :pswitch_8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceSecurityConnector;-><init>()V

    goto/16 :goto_1

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77d3dcd9 -> :sswitch_4
        -0x49eca1c7 -> :sswitch_2
        -0x422dee4e -> :sswitch_1
        -0x30b2666e -> :sswitch_3
        0x592ae1b -> :sswitch_5
        0x224795b4 -> :sswitch_7
        0x389318f4 -> :sswitch_8
        0x55cce9d5 -> :sswitch_0
        0x6330b2c8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getSharedInstance()Lcom/mcdonalds/sdk/connectors/ConnectorManager;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mSharedInstance:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mSharedInstance:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mSharedInstance:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    return-object v0
.end method

.method public static setSharedInstance(Lcom/mcdonalds/sdk/connectors/ConnectorManager;)V
    .locals 0
    .param p0, "connectorManager"    # Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    .prologue
    .line 73
    sput-object p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mSharedInstance:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    .line 74
    return-void
.end method


# virtual methods
.method public clearConnectors()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/BaseConnector;

    .line 138
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/BaseConnector;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    goto :goto_0

    .line 142
    .end local v0    # "connector":Lcom/mcdonalds/sdk/connectors/BaseConnector;
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mConnectorMap:Ljava/util/HashMap;

    .line 143
    return-void
.end method

.method public getConnectorImpl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "implementation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "connectorName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/BaseConnector;

    .line 98
    .local v0, "connector":Lcom/mcdonalds/sdk/connectors/BaseConnector;
    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnectorForName(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/BaseConnector;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/connectors/ConnectorManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->mConnectorMap:Ljava/util/HashMap;

    .line 52
    return-object p0
.end method
