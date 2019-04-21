.class public Lcom/google/api/client/testing/util/MockBackOff;
.super Ljava/lang/Object;
.source "MockBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private backOffMillis:J

.field private maxTries:I

.field private numTries:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    return-void
.end method


# virtual methods
.method public nextBackOffMillis()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 51
    iget v2, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    iget v3, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    if-ge v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/api/client/testing/util/MockBackOff;->backOffMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-wide v0

    .line 54
    :cond_1
    iget v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    .line 55
    iget-wide v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->backOffMillis:J

    goto :goto_0
.end method
