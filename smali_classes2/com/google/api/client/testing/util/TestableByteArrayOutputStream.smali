.class public Lcom/google/api/client/testing/util/TestableByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "TestableByteArrayOutputStream.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/util/TestableByteArrayOutputStream;->closed:Z

    .line 45
    return-void
.end method
