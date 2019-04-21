.class public final Lcom/newrelic/mobile/fbs/ios/Arch;
.super Ljava/lang/Object;
.source "Arch.java"


# static fields
.field public static final arm64:B = 0x1t

.field public static final armv7:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "armv7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "arm64"

    aput-object v2, v0, v1

    sput-object v0, Lcom/newrelic/mobile/fbs/ios/Arch;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # I

    .prologue
    .line 12
    sget-object v0, Lcom/newrelic/mobile/fbs/ios/Arch;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
