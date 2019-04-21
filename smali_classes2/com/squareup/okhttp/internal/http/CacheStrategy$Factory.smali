.class public Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lcom/squareup/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/squareup/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/squareup/okhttp/Request;
    .param p4, "cacheResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    const/4 v8, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 126
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 127
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    .line 128
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 130
    if-eqz p4, :cond_7

    .line 131
    invoke-virtual {p4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 132
    .local v1, "headers":Lcom/squareup/okhttp/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 133
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 137
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 140
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 142
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    invoke-static {v4, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 147
    :cond_5
    sget-object v5, Lcom/squareup/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_1

    .line 149
    :cond_6
    sget-object v5, Lcom/squareup/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .line 154
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lcom/squareup/okhttp/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 275
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 276
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 278
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    .line 279
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 281
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 282
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 283
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 279
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 246
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v2

    .line 247
    .local v2, "responseCaching":Lcom/squareup/okhttp/CacheControl;
    invoke-virtual {v2}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 248
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 267
    :cond_0
    :goto_0
    return-wide v6

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 250
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 251
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 253
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 254
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 251
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3
    move-wide v0, v6

    .line 254
    goto :goto_2

    .line 255
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 256
    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 262
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 264
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 265
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    .line 262
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lcom/squareup/okhttp/internal/http/CacheStrategy;
    .locals 24

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 175
    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    .line 236
    :goto_0
    return-object v19

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v19

    if-nez v19, :cond_1

    .line 180
    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/squareup/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 187
    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 190
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v9

    .line 191
    .local v9, "requestCaching":Lcom/squareup/okhttp/CacheControl;
    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/squareup/okhttp/Request;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 192
    :cond_3
    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 196
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v10

    .line 198
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 199
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 202
    :cond_5
    const-wide/16 v14, 0x0

    .line 203
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 204
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 207
    :cond_6
    const-wide/16 v12, 0x0

    .line 208
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v18

    .line 209
    .local v18, "responseCaching":Lcom/squareup/okhttp/CacheControl;
    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/CacheControl;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 210
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 213
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_b

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_b

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/squareup/okhttp/Response$Builder;

    move/from16 v20, v0

    if-nez v20, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v6

    .line 215
    .local v6, "builder":Lcom/squareup/okhttp/Response$Builder;
    :goto_1
    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    .line 216
    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 218
    :cond_8
    const-wide/32 v16, 0x5265c00

    .line 219
    .local v16, "oneDayMillis":J
    cmp-long v19, v4, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 220
    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 222
    :cond_9
    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v21

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 214
    .end local v6    # "builder":Lcom/squareup/okhttp/Response$Builder;
    .end local v16    # "oneDayMillis":J
    :cond_a
    check-cast v19, Lcom/squareup/okhttp/Response$Builder;

    invoke-static/range {v19 .. v19}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->newBuilder(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v6

    goto :goto_1

    .line 225
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v8

    .line 227
    .local v8, "conditionalRequestBuilder":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 228
    const-string v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 235
    :cond_c
    :goto_2
    instance-of v0, v8, Lcom/squareup/okhttp/Request$Builder;

    move/from16 v19, v0

    if-nez v19, :cond_f

    invoke-virtual {v8}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v7

    .line 236
    .end local v8    # "conditionalRequestBuilder":Lcom/squareup/okhttp/Request$Builder;
    .local v7, "conditionalRequest":Lcom/squareup/okhttp/Request;
    :goto_3
    invoke-static {v7}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/squareup/okhttp/Request;)Z

    move-result v19

    if-eqz v19, :cond_10

    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 229
    .end local v7    # "conditionalRequest":Lcom/squareup/okhttp/Request;
    .restart local v8    # "conditionalRequestBuilder":Lcom/squareup/okhttp/Request$Builder;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 230
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_2

    .line 231
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 232
    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_2

    .line 235
    :cond_f
    check-cast v8, Lcom/squareup/okhttp/Request$Builder;

    .end local v8    # "conditionalRequestBuilder":Lcom/squareup/okhttp/Request$Builder;
    invoke-static {v8}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v7

    goto :goto_3

    .line 236
    .restart local v7    # "conditionalRequest":Lcom/squareup/okhttp/Request;
    :cond_10
    new-instance v19, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lcom/squareup/okhttp/Request;)Z
    .locals 1
    .param p0, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 301
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/squareup/okhttp/internal/http/CacheStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 163
    .local v0, "candidate":Lcom/squareup/okhttp/internal/http/CacheStrategy;
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .end local v0    # "candidate":Lcom/squareup/okhttp/internal/http/CacheStrategy;
    invoke-direct {v0, v2, v2, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    .line 168
    :cond_0
    return-object v0
.end method