.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;
.super Ljava/lang/Object;
.source "MWOfferConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, "offerCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferCategory;>;"
    move-object v2, p3

    .line 78
    .local v2, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;->getResultCode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;->getResultCode()I

    move-result v7

    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v2

    .line 82
    :cond_0
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;->getData()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "offerCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferCategory;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v4    # "offerCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferCategory;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    .local v3, "mwOfferCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 89
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;

    .line 91
    .local v0, "ecpOfferCategory":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;->toOfferCategory(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;)Lcom/mcdonalds/sdk/modules/models/OfferCategory;

    move-result-object v5

    .line 93
    .local v5, "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "ecpOfferCategory":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;
    .end local v1    # "i":I
    .end local v3    # "mwOfferCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;>;"
    .end local v5    # "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    .end local v6    # "size":I
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v7, v4, p2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 98
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetOfferCategoriesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
