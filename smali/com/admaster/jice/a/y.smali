.class public final enum Lcom/admaster/jice/a/y;
.super Ljava/lang/Enum;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admaster/jice/a/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVED:Lcom/admaster/jice/a/y;

.field public static final enum ACTIVING:Lcom/admaster/jice/a/y;

.field public static final enum UNACTIVE:Lcom/admaster/jice/a/y;

.field private static final synthetic a:[Lcom/admaster/jice/a/y;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/admaster/jice/a/y;

    const-string v1, "UNACTIVE"

    invoke-direct {v0, v1, v2, v2}, Lcom/admaster/jice/a/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/admaster/jice/a/y;->UNACTIVE:Lcom/admaster/jice/a/y;

    new-instance v0, Lcom/admaster/jice/a/y;

    const-string v1, "ACTIVING"

    invoke-direct {v0, v1, v3, v3}, Lcom/admaster/jice/a/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/admaster/jice/a/y;->ACTIVING:Lcom/admaster/jice/a/y;

    new-instance v0, Lcom/admaster/jice/a/y;

    const-string v1, "ACTIVED"

    invoke-direct {v0, v1, v4, v4}, Lcom/admaster/jice/a/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/admaster/jice/a/y;->ACTIVED:Lcom/admaster/jice/a/y;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/admaster/jice/a/y;

    sget-object v1, Lcom/admaster/jice/a/y;->UNACTIVE:Lcom/admaster/jice/a/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/admaster/jice/a/y;->ACTIVING:Lcom/admaster/jice/a/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admaster/jice/a/y;->ACTIVED:Lcom/admaster/jice/a/y;

    aput-object v1, v0, v4

    sput-object v0, Lcom/admaster/jice/a/y;->a:[Lcom/admaster/jice/a/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/admaster/jice/a/y;->value:I

    .line 46
    iput p3, p0, Lcom/admaster/jice/a/y;->value:I

    .line 47
    return-void
.end method

.method public static valueOf(I)Lcom/admaster/jice/a/y;
    .locals 1

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 58
    sget-object v0, Lcom/admaster/jice/a/y;->UNACTIVE:Lcom/admaster/jice/a/y;

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/admaster/jice/a/y;->UNACTIVE:Lcom/admaster/jice/a/y;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v0, Lcom/admaster/jice/a/y;->ACTIVING:Lcom/admaster/jice/a/y;

    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v0, Lcom/admaster/jice/a/y;->ACTIVED:Lcom/admaster/jice/a/y;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admaster/jice/a/y;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/admaster/jice/a/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/a/y;

    return-object v0
.end method

.method public static values()[Lcom/admaster/jice/a/y;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/admaster/jice/a/y;->a:[Lcom/admaster/jice/a/y;

    array-length v1, v0

    new-array v2, v1, [Lcom/admaster/jice/a/y;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/admaster/jice/a/y;->value:I

    return v0
.end method
