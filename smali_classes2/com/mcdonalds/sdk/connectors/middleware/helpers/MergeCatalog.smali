.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;
.super Ljava/lang/Object;
.source "MergeCatalog.java"


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

.field catalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

.field final jsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "\\\\c"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_COPYRIGHT:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "\\\\r"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_REGISTER:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "\\\\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_TRADEMARK:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "\\\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_NEWLINE:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "\\\\[a-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_ALL:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "\u00a9"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->COPYRIGHT:Ljava/lang/String;

    .line 37
    const-string v0, "\u00ae"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->REGISTER:Ljava/lang/String;

    .line 38
    const-string v0, "\u2122"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->TRADEMARK:Ljava/lang/String;

    .line 39
    const-string v0, "\n"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->NEWLINE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->catalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->jsonString:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_COPYRIGHT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\u00a9"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_REGISTER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\u00ae"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_TRADEMARK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\u2122"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_NEWLINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->PATTERN_ALL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
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
    .line 99
    if-eqz p1, :cond_0

    .line 100
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

    .line 102
    .local v0, "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    .line 103
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    .line 104
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    goto :goto_0

    .line 107
    .end local v0    # "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    :cond_0
    return-void
.end method

.method private normalizeNames(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
    .locals 9
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .prologue
    .line 73
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->isUsingECP3()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->stores:Ljava/util/List;

    .line 76
    .local v5, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;>;"
    if-eqz v5, :cond_2

    .line 77
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;

    .line 78
    .local v4, "store":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    iget-object v3, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    .line 79
    .local v3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;>;"
    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .line 81
    .local v2, "product":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    iget-object v8, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->name:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    invoke-direct {p0, v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->normalize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;)V

    goto :goto_0

    .line 88
    .end local v2    # "product":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    .end local v3    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;>;"
    .end local v4    # "store":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    .end local v5    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;>;"
    :cond_1
    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 89
    .local v1, "market":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 90
    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    .line 91
    .local v0, "info":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->normalize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;)V

    goto :goto_1

    .line 95
    .end local v0    # "info":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    .end local v1    # "market":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    :cond_2
    return-void
.end method


# virtual methods
.method public processData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    .locals 7

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Landroid/util/Base64InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->jsonString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 53
    .local v0, "base64InputStream":Landroid/util/Base64InputStream;
    const/4 v2, 0x0

    .line 54
    .local v2, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .end local v2    # "gis":Ljava/util/zip/GZIPInputStream;
    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    .restart local v2    # "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_0

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->catalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .line 59
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->catalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->normalizeNames(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .end local v0    # "base64InputStream":Landroid/util/Base64InputStream;
    .end local v2    # "gis":Ljava/util/zip/GZIPInputStream;
    :goto_1
    const-string v3, "Finished Parsing Catalog."

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->catalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    return-object v3

    .line 58
    .restart local v0    # "base64InputStream":Landroid/util/Base64InputStream;
    .restart local v2    # "gis":Ljava/util/zip/GZIPInputStream;
    :cond_0
    :try_start_1
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 61
    .end local v0    # "base64InputStream":Landroid/util/Base64InputStream;
    .end local v2    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method
