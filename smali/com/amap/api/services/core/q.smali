.class public abstract Lcom/amap/api/services/core/q;
.super Lcom/amap/api/services/core/bs;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/services/core/bs;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Lcom/amap/api/services/core/bs;-><init>()V

    .line 32
    iput v1, p0, Lcom/amap/api/services/core/q;->b:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/q;->c:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/amap/api/services/core/q;->h:I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/q;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 173
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 175
    invoke-virtual {p0, v5}, Lcom/amap/api/services/core/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/amap/api/services/core/q;->d:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/amap/api/services/core/q;->a:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/q;->b:I

    .line 49
    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 77
    move-object v1, v2

    .line 79
    :cond_0
    :goto_0
    iget v3, p0, Lcom/amap/api/services/core/q;->b:I

    if-ge v0, v3, :cond_3

    .line 81
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v3

    .line 83
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/amap/api/services/core/br;->a(Z)Lcom/amap/api/services/core/br;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/amap/api/services/core/q;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/amap/api/services/core/ab;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amap/api/services/core/q;->a(Lorg/apache/http/HttpHost;)V

    .line 86
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 87
    invoke-virtual {v4, p0}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/bs;)[B

    move-result-object v3

    .line 92
    :goto_1
    invoke-direct {p0, v3}, Lcom/amap/api/services/core/q;->b([B)Ljava/lang/Object;

    move-result-object v1

    .line 93
    iget v0, p0, Lcom/amap/api/services/core/q;->b:I

    goto :goto_0

    .line 88
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 89
    invoke-virtual {v4, p0}, Lcom/amap/api/services/core/br;->c(Lcom/amap/api/services/core/bs;)[B
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 94
    :catch_0
    move-exception v3

    .line 95
    const-string v4, "ProtocalHandler"

    const-string v5, "getDataMayThrowAMapException"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    iget v4, p0, Lcom/amap/api/services/core/q;->b:I

    if-lt v0, v4, :cond_0

    .line 100
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catch_1
    move-exception v3

    .line 103
    const-string v4, "ProtocalHandler"

    const-string v5, "getDataMayThrowAMapCoreException"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    iget v4, p0, Lcom/amap/api/services/core/q;->b:I

    if-ge v0, v4, :cond_2

    .line 108
    :try_start_1
    iget v4, p0, Lcom/amap/api/services/core/q;->h:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 109
    :catch_2
    move-exception v0

    .line 110
    const-string v0, "ProtocalHandler"

    const-string v1, "getDataMayThrowInterruptedException"

    invoke-static {v3, v0, v1}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/services/core/u;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/services/core/q;->h()Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/services/core/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    return-object v1

    :cond_4
    move-object v3, v2

    goto :goto_1
.end method


# virtual methods
.method protected a([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    :cond_0
    :goto_1
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    const-string v2, "ProtocalHandler"

    const-string v3, "loadData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v1}, Lcom/amap/api/services/core/d;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/amap/api/services/core/q;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract a_()Ljava/lang/String;
.end method

.method protected abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-object p1

    .line 192
    :cond_0
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "ProtocalHandler"

    const-string v2, "strEncoderUnsupportedEncodingException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string v1, "ProtocalHandler"

    const-string v2, "strEncoderException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c_()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-object p1

    .line 207
    :cond_0
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "ProtocalHandler"

    const-string v2, "strReEncoder"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    const-string v1, "ProtocalHandler"

    const-string v2, "strReEncoderException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d_()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "User-Agent"

    const-string v2, "AMAP SDK Android Search 2.4.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/services/core/q;->d:Landroid/content/Context;

    sget-object v3, Lcom/amap/api/services/core/l;->a:Lcom/amap/api/services/core/ac;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/core/x;->a(Landroid/content/Context;Lcom/amap/api/services/core/ac;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "ia"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "ec"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "key"

    iget-object v2, p0, Lcom/amap/api/services/core/q;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/core/v;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v0
.end method

.method public e()Lorg/apache/http/HttpEntity;
    .locals 6

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/core/q;->a_()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/amap/api/services/core/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-static {}, Lcom/amap/api/services/core/x;->a()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&ts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&scode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/services/core/q;->d:Landroid/content/Context;

    invoke-static {v5, v0, v2}, Lcom/amap/api/services/core/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v2, "ProtocalHandler"

    const-string v3, "getEntity"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amap/api/services/core/q;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/amap/api/services/core/q;->f()Ljava/lang/Object;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method
