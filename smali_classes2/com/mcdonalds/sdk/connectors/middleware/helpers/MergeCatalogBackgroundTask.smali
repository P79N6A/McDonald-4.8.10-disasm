.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
.super Landroid/os/AsyncTask;
.source "MergeCatalogBackgroundTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;",
        ">;"
    }
.end annotation


# instance fields
.field private final COPYRIGHT:Ljava/lang/String;

.field private final NEWLINE:Ljava/lang/String;

.field private final PATTERN_ALL:Ljava/util/regex/Pattern;

.field private final PATTERN_COPYRIGHT:Ljava/util/regex/Pattern;

.field private final PATTERN_NEWLINE:Ljava/util/regex/Pattern;

.field private final PATTERN_REGISTER:Ljava/util/regex/Pattern;

.field private final PATTERN_TRADEMARK:Ljava/util/regex/Pattern;

.field private final REGISTER:Ljava/lang/String;

.field private final TRADEMARK:Ljava/lang/String;

.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final mResponseData:Ljava/lang/String;

.field final mTaskListener:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;)V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;)V
    .locals 1
    .param p1, "responseData"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    const-string v0, "\\\\c"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_COPYRIGHT:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\\\r"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_REGISTER:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\\\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_TRADEMARK:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "\\\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_NEWLINE:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "\\\\[a-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_ALL:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "\u00a9"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->COPYRIGHT:Ljava/lang/String;

    .line 48
    const-string v0, "\u00ae"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->REGISTER:Ljava/lang/String;

    .line 49
    const-string v0, "\u2122"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->TRADEMARK:Ljava/lang/String;

    .line 50
    const-string v0, "\n"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->NEWLINE:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mResponseData:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mTaskListener:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;

    .line 64
    return-void
.end method

.method private getCachedMarketCatalog()Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    .locals 4

    .prologue
    .line 228
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "connectors.Middleware.serializeCachingMarketCatalog"

    const/4 v3, 0x0

    .line 229
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v0

    .line 231
    .local v0, "serialize":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "cache_market_catalog"

    const-class v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 232
    invoke-virtual {v1, v2, v3, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 231
    return-object v1
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_COPYRIGHT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\u00a9"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_REGISTER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\u00ae"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_TRADEMARK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\u2122"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_NEWLINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->PATTERN_ALL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private normalize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .line 180
    .local v0, "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    .line 181
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    .line 182
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    goto :goto_0

    .line 185
    .end local v0    # "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    :cond_0
    return-void
.end method

.method private normalizeNames(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
    .locals 13
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .prologue
    .line 131
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->isUsingECP3()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 133
    iget-object v9, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->stores:Ljava/util/List;

    .line 134
    .local v9, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;>;"
    if-eqz v9, :cond_1

    .line 135
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;

    .line 136
    .local v8, "store":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    iget-object v7, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    .line 137
    .local v7, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;>;"
    if-eqz v7, :cond_0

    .line 138
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .line 139
    .local v6, "product":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    iget-object v12, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->name:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    invoke-direct {p0, v12}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;)V

    goto :goto_0

    .line 145
    .end local v6    # "product":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    .end local v7    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;>;"
    .end local v8    # "store":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    :cond_1
    iget-object v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 146
    .local v3, "market":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    if-eqz v3, :cond_6

    .line 147
    iget-object v1, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->displayCategory:Ljava/util/List;

    .line 148
    .local v1, "displayCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;>;"
    if-eqz v1, :cond_6

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;

    .line 150
    .local v0, "category":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;
    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->names:Ljava/util/List;

    .line 151
    .local v5, "names":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;>;"
    if-eqz v5, :cond_2

    .line 152
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .line 153
    .local v4, "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    iget-object v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 154
    iget-object v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    .line 156
    :cond_4
    iget-object v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 157
    iget-object v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    goto :goto_1

    .line 166
    .end local v0    # "category":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;
    .end local v1    # "displayCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;>;"
    .end local v3    # "market":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    .end local v4    # "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    .end local v5    # "names":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;>;"
    .end local v9    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;>;"
    :cond_5
    iget-object v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 167
    .restart local v3    # "market":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    if-eqz v3, :cond_6

    iget-object v10, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    if-eqz v10, :cond_6

    .line 168
    iget-object v10, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    .line 169
    .local v2, "info":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;)V

    goto :goto_2

    .line 173
    .end local v2    # "info":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    :cond_6
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    .locals 11
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 73
    array-length v7, p1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 74
    const-string v7, "Improper of MergeCatalogBackgroundTask, parameter count incorrect"

    invoke-static {v7}, Lcom/mcdonalds/sdk/services/log/MCDLog;->fatal(Ljava/lang/String;)V

    .line 75
    const/4 v6, 0x0

    .line 115
    :goto_0
    return-object v6

    .line 78
    :cond_0
    const/4 v6, 0x0

    .line 81
    .local v6, "parsedCatalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    const/4 v4, 0x0

    .line 82
    .local v4, "isCachedMarketCatalog":Z
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mResponseData:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 83
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .end local v6    # "parsedCatalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;-><init>()V

    .line 84
    .restart local v6    # "parsedCatalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->getCachedMarketCatalog()Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    move-result-object v7

    iput-object v7, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 85
    const-string v7, "Using Cached Catalog."

    invoke-static {v7}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 86
    const/4 v4, 0x1

    .line 110
    :goto_1
    if-eqz v6, :cond_1

    .line 111
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mTaskListener:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;

    invoke-interface {v7, v6, v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;->onPerformBackgroundTask(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;Z)V

    .line 114
    :cond_1
    const-string v7, "Finished merging catalogs"

    invoke-static {v7}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v7, "catUpdate"

    const-string v8, "Finished Downloading Catalog."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    aget-object v5, p1, v9

    check-cast v5, Ljava/lang/String;

    .line 94
    .local v5, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/util/Base64InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 95
    .local v1, "base64InputStream":Landroid/util/Base64InputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v3, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    instance-of v10, v7, Lcom/google/gson/Gson;

    if-nez v10, :cond_3

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    move-object v0, v7

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    move-object v6, v0

    .line 101
    invoke-direct {p0, v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->normalizeNames(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V

    .line 103
    const-string v7, "Finished Parsing Catalog."

    invoke-static {v7}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 104
    .end local v1    # "base64InputStream":Landroid/util/Base64InputStream;
    .end local v3    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "base64InputStream":Landroid/util/Base64InputStream;
    .restart local v3    # "gis":Ljava/util/zip/GZIPInputStream;
    :cond_3
    :try_start_1
    check-cast v7, Lcom/google/gson/Gson;

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_2

    .line 104
    .end local v1    # "base64InputStream":Landroid/util/Base64InputStream;
    .end local v3    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MergeCatalogBackgroundTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->doInBackground([Ljava/lang/Object;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MergeCatalogBackgroundTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mResponseData:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mTaskListener:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;

    aput-object v2, v0, v1

    instance-of v1, p0, Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
    :goto_0
    return-void

    .line 67
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
    :cond_0
    check-cast p0, Landroid/os/AsyncTask;

    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
    .locals 1
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->mTaskListener:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;->onPerformPostExecute(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V

    .line 121
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MergeCatalogBackgroundTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;->onPostExecute(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MergeCatalogBackgroundTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
