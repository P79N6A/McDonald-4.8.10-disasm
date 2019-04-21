.class public final Lcom/alipay/sdk/data/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;

    .line 199
    iput p2, p0, Lcom/alipay/sdk/data/a$a;->b:I

    .line 200
    iput-object p3, p0, Lcom/alipay/sdk/data/a$a;->c:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/sdk/data/a$a;
    .locals 4

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/sdk/data/a$a;

    const-string v1, "pn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "v"

    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "pk"

    .line 210
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/data/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    if-nez p0, :cond_1

    .line 216
    const/4 v0, 0x0

    .line 226
    :cond_0
    return-object v0

    .line 218
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 220
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/data/a$a;->a(Lorg/json/JSONObject;)Lcom/alipay/sdk/data/a$a;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_2

    .line 223
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    .line 249
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 250
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/data/a$a;

    .line 251
    invoke-static {v0}, Lcom/alipay/sdk/data/a$a;->a(Lcom/alipay/sdk/data/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 253
    goto :goto_0
.end method

.method public static a(Lcom/alipay/sdk/data/a$a;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 231
    if-nez p0, :cond_0

    .line 240
    :goto_0
    return-object v0

    .line 235
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pn"

    iget-object v3, p0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "v"

    iget v3, p0, Lcom/alipay/sdk/data/a$a;->b:I

    .line 236
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pk"

    iget-object v3, p0, Lcom/alipay/sdk/data/a$a;->c:Ljava/lang/String;

    .line 237
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Lcom/alipay/sdk/data/a$a;->a(Lcom/alipay/sdk/data/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
