.class Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStoreFilters(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 325
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 16
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$102(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Z)Z

    .line 329
    if-nez p3, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12, v13}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$202(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Ljava/util/List;)Ljava/util/List;

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v12, v13}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$002(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 333
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 334
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_4

    .line 335
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v12, v13, :cond_0

    .line 336
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 337
    .local v2, "configuration":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "language":Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 339
    invoke-virtual {v3, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 342
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    .end local v6    # "language":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$300()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".unusedFilters"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 343
    .local v11, "unusedFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 344
    .local v10, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 345
    .local v4, "filter":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-interface {v11, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 346
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "store_locator_filter_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, "resourceKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "string"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v9, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 348
    .local v8, "resourceId":I
    if-lez v8, :cond_1

    .line 349
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "fromFilter":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 351
    invoke-virtual {v10, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    .end local v4    # "filter":Ljava/lang/String;
    .end local v5    # "fromFilter":Ljava/lang/String;
    .end local v8    # "resourceId":I
    .end local v9    # "resourceKey":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$200(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$000(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 362
    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "unusedFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$400(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/AsyncListener;

    .line 363
    .local v7, "listenerItem":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-static {v13}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$200(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v7, v13, v0, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 365
    .end local v7    # "listenerItem":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$6;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->access$400(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 366
    return-void
.end method
