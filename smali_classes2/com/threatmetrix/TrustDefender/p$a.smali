.class final enum Lcom/threatmetrix/TrustDefender/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefender/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/threatmetrix/TrustDefender/p$a;

.field public static final enum b:Lcom/threatmetrix/TrustDefender/p$a;

.field public static final enum c:Lcom/threatmetrix/TrustDefender/p$a;

.field public static final enum d:Lcom/threatmetrix/TrustDefender/p$a;

.field public static final enum e:Lcom/threatmetrix/TrustDefender/p$a;

.field private static final synthetic h:[Lcom/threatmetrix/TrustDefender/p$a;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1349
    new-instance v0, Lcom/threatmetrix/TrustDefender/p$a;

    const-string v1, "CDMA"

    const-string v2, "CDMA"

    invoke-direct {v0, v1, v4, v2, v7}, Lcom/threatmetrix/TrustDefender/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/p$a;->a:Lcom/threatmetrix/TrustDefender/p$a;

    .line 1350
    new-instance v0, Lcom/threatmetrix/TrustDefender/p$a;

    const-string v1, "GSM"

    const-string v2, "GSM"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/threatmetrix/TrustDefender/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/p$a;->b:Lcom/threatmetrix/TrustDefender/p$a;

    .line 1351
    new-instance v0, Lcom/threatmetrix/TrustDefender/p$a;

    const-string v1, "LTE"

    const-string v2, "LTE"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/threatmetrix/TrustDefender/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/p$a;->c:Lcom/threatmetrix/TrustDefender/p$a;

    .line 1352
    new-instance v0, Lcom/threatmetrix/TrustDefender/p$a;

    const-string v1, "UNKOWN"

    const-string v2, "OTHER"

    const/16 v3, 0x63

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/threatmetrix/TrustDefender/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/p$a;->d:Lcom/threatmetrix/TrustDefender/p$a;

    .line 1353
    new-instance v0, Lcom/threatmetrix/TrustDefender/p$a;

    const-string v1, "WCDMA"

    const-string v2, "UMTS"

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/threatmetrix/TrustDefender/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/p$a;->e:Lcom/threatmetrix/TrustDefender/p$a;

    .line 1346
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/threatmetrix/TrustDefender/p$a;

    sget-object v1, Lcom/threatmetrix/TrustDefender/p$a;->a:Lcom/threatmetrix/TrustDefender/p$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/threatmetrix/TrustDefender/p$a;->b:Lcom/threatmetrix/TrustDefender/p$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/threatmetrix/TrustDefender/p$a;->c:Lcom/threatmetrix/TrustDefender/p$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/threatmetrix/TrustDefender/p$a;->d:Lcom/threatmetrix/TrustDefender/p$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/threatmetrix/TrustDefender/p$a;->e:Lcom/threatmetrix/TrustDefender/p$a;

    aput-object v1, v0, v8

    sput-object v0, Lcom/threatmetrix/TrustDefender/p$a;->h:[Lcom/threatmetrix/TrustDefender/p$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1358
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1359
    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/p$a;->f:Ljava/lang/String;

    .line 1360
    iput p4, p0, Lcom/threatmetrix/TrustDefender/p$a;->g:I

    .line 1361
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/p$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1346
    const-class v0, Lcom/threatmetrix/TrustDefender/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefender/p$a;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefender/p$a;
    .locals 1

    .prologue
    .line 1346
    sget-object v0, Lcom/threatmetrix/TrustDefender/p$a;->h:[Lcom/threatmetrix/TrustDefender/p$a;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefender/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefender/p$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/p$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Lcom/threatmetrix/TrustDefender/p$a;->g:I

    return v0
.end method
