.class final enum Lcom/threatmetrix/TrustDefender/TrustDefender$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefender/TrustDefender$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

.field public static final enum b:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

.field public static final enum c:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

.field private static final synthetic d:[Lcom/threatmetrix/TrustDefender/TrustDefender$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    const-string v1, "doProfileRequest"

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    .line 109
    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    const-string v1, "doPackageScan"

    invoke-direct {v0, v1, v3}, Lcom/threatmetrix/TrustDefender/TrustDefender$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->b:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    .line 110
    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    const-string v1, "init"

    invoke-direct {v0, v1, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->c:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->b:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->c:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->d:[Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/TrustDefender$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefender/TrustDefender$c;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->d:[Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefender/TrustDefender$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    return-object v0
.end method
