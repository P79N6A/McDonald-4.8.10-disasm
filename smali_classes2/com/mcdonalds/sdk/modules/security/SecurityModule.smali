.class public Lcom/mcdonalds/sdk/modules/security/SecurityModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "SecurityModule.java"


# static fields
.field public static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field public static final NAME:Ljava/lang/String; = "security"


# instance fields
.field private mConnector:Lcom/mcdonalds/sdk/connectors/SecurityConnector;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 19
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.security.connector"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    .local v0, "implementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/SecurityConnector;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/security/SecurityModule;->mConnector:Lcom/mcdonalds/sdk/connectors/SecurityConnector;

    .line 21
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/security/SecurityModule;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public retriveSecurityToken(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "merchantId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "sessionIdListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/security/SecurityModule;->mConnector:Lcom/mcdonalds/sdk/connectors/SecurityConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/security/SecurityModule;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/mcdonalds/sdk/connectors/SecurityConnector;->retriveSecurityToken(Landroid/content/Context;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 26
    return-void
.end method
