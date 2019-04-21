.class public final enum Lcom/mcdonalds/app/ordering/customization/PortionQuantity;
.super Ljava/lang/Enum;
.source "PortionQuantity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/ordering/customization/PortionQuantity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

.field public static final enum EXTRA:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

.field public static final enum LIGHT:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

.field public static final enum NONE:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

.field public static final enum REGULAR:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;


# instance fields
.field private mIsLight:Z

.field private mQuantity:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->NONE:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 8
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->LIGHT:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 9
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->REGULAR:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 10
    new-instance v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    const-string v1, "EXTRA"

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->EXTRA:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    sget-object v1, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->NONE:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->LIGHT:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->REGULAR:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->EXTRA:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->$VALUES:[Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "quantity"    # I
    .param p4, "isLight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->mQuantity:I

    .line 19
    iput-boolean p4, p0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->mIsLight:Z

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/ordering/customization/PortionQuantity;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.customization.PortionQuantity"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    const-class v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/ordering/customization/PortionQuantity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.customization.PortionQuantity"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->$VALUES:[Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    return-object v0
.end method

.method static withQuantityAndLight(IZ)Lcom/mcdonalds/app/ordering/customization/PortionQuantity;
    .locals 7
    .param p0, "quantity"    # I
    .param p1, "isLight"    # Z

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ordering.customization.PortionQuantity"

    const-string v3, "withQuantityAndLight"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 31
    sget-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->NONE:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 33
    .local v0, "ret":Lcom/mcdonalds/app/ordering/customization/PortionQuantity;
    packed-switch p0, :pswitch_data_0

    .line 55
    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->NONE:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 37
    goto :goto_0

    .line 40
    :pswitch_1
    if-eqz p1, :cond_0

    .line 41
    sget-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->LIGHT:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->REGULAR:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    .line 47
    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->EXTRA:Lcom/mcdonalds/app/ordering/customization/PortionQuantity;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getQuantity()I
    .locals 2

    .prologue
    const-string v0, "getQuantity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget v0, p0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->mQuantity:I

    return v0
.end method

.method public isLight()Z
    .locals 2

    .prologue
    const-string v0, "isLight"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/customization/PortionQuantity;->mIsLight:Z

    return v0
.end method
