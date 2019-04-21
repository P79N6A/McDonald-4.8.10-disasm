.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;
.super Ljava/lang/Object;
.source "MWOfferConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->getAdvertisablePromotionEntities(Ljava/lang/String;ILcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$storeId:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->val$storeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 347
    move-object v0, p3

    .line 349
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;->getResultCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->val$storeId:I

    invoke-static {v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->access$400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, p2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 354
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 344
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$4;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreAdvertisableResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
