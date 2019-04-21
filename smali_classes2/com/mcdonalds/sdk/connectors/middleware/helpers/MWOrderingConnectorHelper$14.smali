.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->checkinKiosk(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 651
    if-eqz p3, :cond_0

    .line 652
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v7, v5, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 666
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;->getResultCode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 657
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;->getResultCode()I

    move-result v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;

    .line 662
    .local v3, "responseData":Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;->getBarcode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 663
    .local v2, "decodedString":[B
    array-length v4, v2

    invoke-static {v2, v6, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 664
    .local v1, "decodedByte":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckin;->getRandomCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 665
    .local v0, "checkinResponse":Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v0, v5, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 648
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$14;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWKioskCheckinResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
