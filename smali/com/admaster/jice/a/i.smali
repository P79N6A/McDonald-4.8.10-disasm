.class public final enum Lcom/admaster/jice/a/i;
.super Ljava/lang/Enum;
.source "JiceCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admaster/jice/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum JICEACTIVE:Lcom/admaster/jice/a/i;

.field public static final enum JICEAPPSTART:Lcom/admaster/jice/a/i;

.field public static final enum JICECLICKPUSH:Lcom/admaster/jice/a/i;

.field public static final enum JICESHOWPUSH:Lcom/admaster/jice/a/i;

.field private static final synthetic a:[Lcom/admaster/jice/a/i;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/admaster/jice/a/i;

    const-string v1, "JICEACTIVE"

    const-string v2, "activate"

    invoke-direct {v0, v1, v3, v2}, Lcom/admaster/jice/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/a/i;->JICEACTIVE:Lcom/admaster/jice/a/i;

    .line 98
    new-instance v0, Lcom/admaster/jice/a/i;

    const-string v1, "JICEAPPSTART"

    const-string v2, "appstart"

    invoke-direct {v0, v1, v4, v2}, Lcom/admaster/jice/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/a/i;->JICEAPPSTART:Lcom/admaster/jice/a/i;

    .line 99
    new-instance v0, Lcom/admaster/jice/a/i;

    const-string v1, "JICESHOWPUSH"

    const-string v2, "showpush"

    invoke-direct {v0, v1, v5, v2}, Lcom/admaster/jice/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/a/i;->JICESHOWPUSH:Lcom/admaster/jice/a/i;

    .line 100
    new-instance v0, Lcom/admaster/jice/a/i;

    const-string v1, "JICECLICKPUSH"

    const-string v2, "clickpush"

    invoke-direct {v0, v1, v6, v2}, Lcom/admaster/jice/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/a/i;->JICECLICKPUSH:Lcom/admaster/jice/a/i;

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/admaster/jice/a/i;

    sget-object v1, Lcom/admaster/jice/a/i;->JICEACTIVE:Lcom/admaster/jice/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admaster/jice/a/i;->JICEAPPSTART:Lcom/admaster/jice/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admaster/jice/a/i;->JICESHOWPUSH:Lcom/admaster/jice/a/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admaster/jice/a/i;->JICECLICKPUSH:Lcom/admaster/jice/a/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/admaster/jice/a/i;->a:[Lcom/admaster/jice/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/admaster/jice/a/i;->value:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admaster/jice/a/i;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/admaster/jice/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/a/i;

    return-object v0
.end method

.method public static values()[Lcom/admaster/jice/a/i;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/admaster/jice/a/i;->a:[Lcom/admaster/jice/a/i;

    array-length v1, v0

    new-array v2, v1, [Lcom/admaster/jice/a/i;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/admaster/jice/a/i;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
