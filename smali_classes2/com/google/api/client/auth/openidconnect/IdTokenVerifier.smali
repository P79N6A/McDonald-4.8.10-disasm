.class public Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;
.super Ljava/lang/Object;
.source "IdTokenVerifier.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;
    }
.end annotation


# instance fields
.field private final acceptableTimeSkewSeconds:J

.field private final audience:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/api/client/util/Clock;

.field private final issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;

    invoke-direct {v0}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;-><init>(Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->clock:Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    .line 83
    iget-wide v0, p1, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->acceptableTimeSkewSeconds:J

    iput-wide v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->acceptableTimeSkewSeconds:J

    .line 84
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->issuer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->issuer:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->audience:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->audience:Ljava/util/Collection;

    .line 87
    return-void

    .line 85
    :cond_0
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;->audience:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method
