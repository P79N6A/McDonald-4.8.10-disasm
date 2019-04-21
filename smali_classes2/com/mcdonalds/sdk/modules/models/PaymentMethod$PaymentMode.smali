.class public final enum Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
.super Ljava/lang/Enum;
.source "PaymentMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field public static final enum Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field public static final enum Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field public static final enum Other:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field public static final enum ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field public static final enum WeChat:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const-string v1, "Credit"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 35
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const-string v1, "Cash"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 36
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const-string v1, "ThirdPart"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 37
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const-string v1, "WeChat"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->WeChat:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 38
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    const-string v1, "Other"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Other:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Cash:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ThirdPart:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->WeChat:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Other:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    return-object v0
.end method
