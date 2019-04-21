.class public Lcom/ensighten/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/ensighten/q$1;

    invoke-direct {v0, p0}, Lcom/ensighten/q$1;-><init>(Lcom/ensighten/q;)V

    iput-object v0, p0, Lcom/ensighten/q;->a:Landroid/os/Handler;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ensighten/q;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/ensighten/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 235
    iput p1, v0, Landroid/os/Message;->what:I

    .line 236
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ensighten/q;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/q;->b(Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method protected a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/ensighten/q;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/q;->b(Landroid/os/Message;)V

    .line 167
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 206
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 210
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ensighten/q;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method protected final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/ensighten/q;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/q;->b(Landroid/os/Message;)V

    .line 171
    return-void
.end method

.method protected a(Ljava/lang/Throwable;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/ensighten/q;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/q;->b(Landroid/os/Message;)V

    .line 175
    return-void
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 247
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    .line 249
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 250
    const-string v1, "UTF-8"

    invoke-static {v3, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_1

    .line 257
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 261
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    invoke-virtual {p0, v1, v0}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/ensighten/q;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ensighten/q;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/q;->b(Landroid/os/Message;)V

    .line 183
    return-void
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ensighten/q;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/ensighten/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ensighten/q;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/ensighten/q;->a(Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method protected b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/ensighten/q;->b(Ljava/lang/Throwable;)V

    .line 196
    return-void
.end method
