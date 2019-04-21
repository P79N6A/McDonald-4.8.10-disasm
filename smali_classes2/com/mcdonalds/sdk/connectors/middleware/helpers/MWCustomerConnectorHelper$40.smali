.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1743
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v10, 0x0

    .line 1749
    if-nez p3, :cond_4

    .line 1750
    const/4 v0, 0x0

    .line 1752
    .local v0, "cardDataStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1753
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1754
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1755
    .local v1, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_1

    .line 1756
    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    .line 1757
    const/4 v7, 0x0

    const-string v8, "id"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1758
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, "hiddenResult"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1759
    const/4 v7, 0x0

    const-string v8, "value"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1762
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1764
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v7

    .line 1768
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 1769
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1770
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40$1;

    invoke-direct {v7, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;)V

    .line 1771
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1772
    .local v6, "type":Ljava/lang/reflect/Type;
    instance-of v7, v2, Lcom/google/gson/Gson;

    if-nez v7, :cond_2

    invoke-virtual {v2, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_2
    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    .line 1773
    .local v4, "json":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toPaymentCard(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v7

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v8, v7, v9, v10}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1780
    .end local v0    # "cardDataStr":Ljava/lang/String;
    .end local v4    # "json":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;>;"
    .end local v6    # "type":Ljava/lang/reflect/Type;
    :goto_3
    return-void

    .line 1772
    .restart local v0    # "cardDataStr":Ljava/lang/String;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v6    # "type":Ljava/lang/reflect/Type;
    :cond_2
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v0, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 1775
    .end local v6    # "type":Ljava/lang/reflect/Type;
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v7, v10, v8, v10}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_3

    .line 1778
    .end local v0    # "cardDataStr":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$40;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v7, v10, v8, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_3

    .line 1764
    .restart local v0    # "cardDataStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1
.end method
