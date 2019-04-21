.class public final Lcom/ensighten/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/ensighten/D;->b:I

    .line 13
    iput-boolean v0, p0, Lcom/ensighten/D;->c:Z

    .line 16
    iput-object p1, p0, Lcom/ensighten/D;->a:Lorg/json/JSONObject;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/D;->a:Lorg/json/JSONObject;

    const-string v1, "opcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/D;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/ensighten/D;->c:Z

    if-nez v0, :cond_2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/D;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 40
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    iget v3, p0, Lcom/ensighten/D;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ensighten/D;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/D;->c:Z

    .line 49
    :cond_2
    iget v0, p0, Lcom/ensighten/D;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/D;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
