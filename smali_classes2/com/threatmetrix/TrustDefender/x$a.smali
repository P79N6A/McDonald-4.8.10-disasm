.class final enum Lcom/threatmetrix/TrustDefender/x$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefender/x$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/threatmetrix/TrustDefender/x$a;

.field public static final enum b:Lcom/threatmetrix/TrustDefender/x$a;

.field public static final enum c:Lcom/threatmetrix/TrustDefender/x$a;

.field public static final enum d:Lcom/threatmetrix/TrustDefender/x$a;

.field public static final enum e:Lcom/threatmetrix/TrustDefender/x$a;

.field private static final synthetic g:[Lcom/threatmetrix/TrustDefender/x$a;


# instance fields
.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/threatmetrix/TrustDefender/x$a;

    const-string v1, "BLUETOOTH"

    const-string v2, "bluetooth tethering"

    invoke-direct {v0, v1, v3, v2}, Lcom/threatmetrix/TrustDefender/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/x$a;->a:Lcom/threatmetrix/TrustDefender/x$a;

    .line 83
    new-instance v0, Lcom/threatmetrix/TrustDefender/x$a;

    const-string v1, "CELLULAR"

    const-string v2, "cellular"

    invoke-direct {v0, v1, v4, v2}, Lcom/threatmetrix/TrustDefender/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/x$a;->b:Lcom/threatmetrix/TrustDefender/x$a;

    .line 84
    new-instance v0, Lcom/threatmetrix/TrustDefender/x$a;

    const-string v1, "MOBILE"

    const-string v2, "mobile"

    invoke-direct {v0, v1, v5, v2}, Lcom/threatmetrix/TrustDefender/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/x$a;->c:Lcom/threatmetrix/TrustDefender/x$a;

    .line 85
    new-instance v0, Lcom/threatmetrix/TrustDefender/x$a;

    const-string v1, "WIFI"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v6, v2}, Lcom/threatmetrix/TrustDefender/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    .line 86
    new-instance v0, Lcom/threatmetrix/TrustDefender/x$a;

    const-string v1, "ETHERNET"

    const-string v2, "ethernet"

    invoke-direct {v0, v1, v7, v2}, Lcom/threatmetrix/TrustDefender/x$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/x$a;->e:Lcom/threatmetrix/TrustDefender/x$a;

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/threatmetrix/TrustDefender/x$a;

    sget-object v1, Lcom/threatmetrix/TrustDefender/x$a;->a:Lcom/threatmetrix/TrustDefender/x$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/threatmetrix/TrustDefender/x$a;->b:Lcom/threatmetrix/TrustDefender/x$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/threatmetrix/TrustDefender/x$a;->c:Lcom/threatmetrix/TrustDefender/x$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/threatmetrix/TrustDefender/x$a;->d:Lcom/threatmetrix/TrustDefender/x$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/threatmetrix/TrustDefender/x$a;->e:Lcom/threatmetrix/TrustDefender/x$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/threatmetrix/TrustDefender/x$a;->g:[Lcom/threatmetrix/TrustDefender/x$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/x$a;->f:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/x$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/threatmetrix/TrustDefender/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefender/x$a;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefender/x$a;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/threatmetrix/TrustDefender/x$a;->g:[Lcom/threatmetrix/TrustDefender/x$a;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefender/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefender/x$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/x$a;->f:Ljava/lang/String;

    return-object v0
.end method
