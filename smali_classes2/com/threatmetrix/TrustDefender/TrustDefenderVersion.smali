.class public final Lcom/threatmetrix/TrustDefender/TrustDefenderVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final numeric:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const v0, 0xcf9f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/TrustDefenderVersion;->numeric:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
