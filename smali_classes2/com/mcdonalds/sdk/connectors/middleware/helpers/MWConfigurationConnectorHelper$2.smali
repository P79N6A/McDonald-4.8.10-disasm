.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;
.super Ljava/lang/Object;
.source "MWConfigurationConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;->getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;->fromMWGeoFencingConfiguration(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;)Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 53
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
