.class public Lcom/ensighten/s;
.super Lcom/ensighten/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ensighten/q;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 179
    :cond_1
    if-nez v1, :cond_2

    .line 182
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 135
    :try_start_0
    invoke-static {p3}, Lcom/ensighten/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    const/16 v1, 0x64

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/ensighten/s;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/s;->b(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {p0, v0, p3}, Lcom/ensighten/s;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p2, v0, v3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/ensighten/s;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/s;->b(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Lcom/ensighten/q;->a(Landroid/os/Message;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 155
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1163
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 1164
    check-cast v0, Lorg/json/JSONObject;

    .line 2092
    invoke-virtual {p0, v0}, Lcom/ensighten/s;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1165
    :cond_1
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_0

    .line 1168
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    if-eqz p2, :cond_1

    .line 189
    :try_start_0
    invoke-static {p2}, Lcom/ensighten/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 192
    instance-of v0, v0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/ensighten/s;->b(Ljava/lang/Throwable;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ensighten/s;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/ensighten/s;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
