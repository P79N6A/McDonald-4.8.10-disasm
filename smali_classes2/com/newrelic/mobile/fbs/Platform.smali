.class public final Lcom/newrelic/mobile/fbs/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final Android:B = 0x0t

.field public static final iOS:B = 0x1t

.field public static final names:[Ljava/lang/String;

.field public static final tvOS:B = 0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iOS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tvOS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/newrelic/mobile/fbs/Platform;->names:[Ljava/lang/String;

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
    .line 13
    sget-object v0, Lcom/newrelic/mobile/fbs/Platform;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
