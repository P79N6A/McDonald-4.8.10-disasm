.class public final enum Lcom/admaster/jice/a/b;
.super Ljava/lang/Enum;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admaster/jice/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/admaster/jice/a/b;

.field public static final enum NORMAL:Lcom/admaster/jice/a/b;

.field private static final synthetic a:[Lcom/admaster/jice/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/admaster/jice/a/b;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/admaster/jice/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    new-instance v0, Lcom/admaster/jice/a/b;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/admaster/jice/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/admaster/jice/a/b;

    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/admaster/jice/a/b;->a:[Lcom/admaster/jice/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admaster/jice/a/b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/admaster/jice/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/a/b;

    return-object v0
.end method

.method public static values()[Lcom/admaster/jice/a/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/admaster/jice/a/b;->a:[Lcom/admaster/jice/a/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/admaster/jice/a/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
