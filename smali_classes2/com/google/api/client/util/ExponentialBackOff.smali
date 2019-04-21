.class public Lcom/google/api/client/util/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ExponentialBackOff$Builder;
    }
.end annotation


# instance fields
.field private currentIntervalMillis:I

.field private final initialIntervalMillis:I

.field private final maxElapsedTimeMillis:I

.field private final maxIntervalMillis:I

.field private final multiplier:D

.field private final nanoClock:Lcom/google/api/client/util/NanoClock;

.field private final randomizationFactor:D

.field startTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ExponentialBackOff;-><init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V

    .line 154
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V
    .locals 10
    .param p1, "builder"    # Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    .line 161
    iget-wide v4, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    iput-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 162
    iget-wide v4, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    iput-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    .line 163
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    .line 164
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    .line 165
    iget-object v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    iput-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 166
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 167
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    cmpg-double v0, v4, v8

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 168
    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 169
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    iget v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 170
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    if-lez v0, :cond_4

    :goto_4
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->reset()V

    .line 172
    return-void

    :cond_0
    move v0, v2

    .line 166
    goto :goto_0

    :cond_1
    move v0, v2

    .line 167
    goto :goto_1

    :cond_2
    move v0, v2

    .line 168
    goto :goto_2

    :cond_3
    move v0, v2

    .line 169
    goto :goto_3

    :cond_4
    move v1, v2

    .line 170
    goto :goto_4
.end method

.method static getRandomValueFromInterval(DDI)I
    .locals 14
    .param p0, "randomizationFactor"    # D
    .param p2, "random"    # D
    .param p4, "currentIntervalMillis"    # I

    .prologue
    .line 209
    move/from16 v0, p4

    int-to-double v10, v0

    mul-double v2, p0, v10

    .line 210
    .local v2, "delta":D
    move/from16 v0, p4

    int-to-double v10, v0

    sub-double v6, v10, v2

    .line 211
    .local v6, "minInterval":D
    move/from16 v0, p4

    int-to-double v10, v0

    add-double v4, v10, v2

    .line 215
    .local v4, "maxInterval":D
    sub-double v10, v4, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    mul-double v10, v10, p2

    add-double/2addr v10, v6

    double-to-int v8, v10

    .line 216
    .local v8, "randomValue":I
    return v8
.end method

.method private incrementCurrentInterval()V
    .locals 6

    .prologue
    .line 288
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    int-to-double v0, v0

    iget v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 289
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    goto :goto_0
.end method


# virtual methods
.method public final getElapsedTimeMillis()J
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public nextBackOffMillis()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->getElapsedTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 195
    const-wide/16 v2, -0x1

    .line 200
    :goto_0
    return-wide v2

    .line 197
    :cond_0
    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/api/client/util/ExponentialBackOff;->getRandomValueFromInterval(DDI)I

    move-result v0

    .line 199
    .local v0, "randomizedInterval":I
    invoke-direct {p0}, Lcom/google/api/client/util/ExponentialBackOff;->incrementCurrentInterval()V

    .line 200
    int-to-long v2, v0

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 177
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    .line 178
    return-void
.end method