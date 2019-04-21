.class public Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;
.super Ljava/lang/Object;
.source "IdTokenVerifier.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field acceptableTimeSkewSeconds:J

.field audience:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clock:Lcom/google/api/client/util/Clock;

.field issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->clock:Lcom/google/api/client/util/Clock;

    .line 156
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->acceptableTimeSkewSeconds:J

    return-void
.end method
