.class public final enum Lcom/admaster/square/api/CustomEvent;
.super Ljava/lang/Enum;
.source "CustomEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admaster/square/api/CustomEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADACTIVE:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADAPPLIST:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADCRASH:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADCUSTOM2:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADCUSTOM4:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADCUSTOM5:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADLOGIN:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADORDER:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADPLIST:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADREG:Lcom/admaster/square/api/CustomEvent;

.field public static final enum ADSTART:Lcom/admaster/square/api/CustomEvent;

.field private static final synthetic a:[Lcom/admaster/square/api/CustomEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADSTART"

    invoke-direct {v0, v1, v4}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADREG"

    invoke-direct {v0, v1, v5}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADREG:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADLOGIN"

    invoke-direct {v0, v1, v6}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADLOGIN:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADORDER"

    invoke-direct {v0, v1, v7}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADORDER:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADPURCHASE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADCRASH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADCRASH:Lcom/admaster/square/api/CustomEvent;

    .line 5
    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADCUSTOM1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADCUSTOM2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM2:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADCUSTOM3"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADCUSTOM4"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM4:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADCUSTOM5"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM5:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADAPPLIST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADAPPLIST:Lcom/admaster/square/api/CustomEvent;

    new-instance v0, Lcom/admaster/square/api/CustomEvent;

    const-string v1, "ADPLIST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/CustomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->ADPLIST:Lcom/admaster/square/api/CustomEvent;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/admaster/square/api/CustomEvent;

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADREG:Lcom/admaster/square/api/CustomEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADLOGIN:Lcom/admaster/square/api/CustomEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADORDER:Lcom/admaster/square/api/CustomEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCRASH:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM2:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM4:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM5:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADAPPLIST:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADPLIST:Lcom/admaster/square/api/CustomEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/admaster/square/api/CustomEvent;->a:[Lcom/admaster/square/api/CustomEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admaster/square/api/CustomEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/admaster/square/api/CustomEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admaster/square/api/CustomEvent;

    return-object v0
.end method

.method public static values()[Lcom/admaster/square/api/CustomEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->a:[Lcom/admaster/square/api/CustomEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/admaster/square/api/CustomEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
