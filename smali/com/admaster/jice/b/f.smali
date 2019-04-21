.class public final enum Lcom/admaster/jice/b/f;
.super Ljava/lang/Enum;
.source "JicePushConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admaster/jice/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMAGE:Lcom/admaster/jice/b/f;

.field public static final enum WEBVIEW:Lcom/admaster/jice/b/f;

.field private static final synthetic a:[Lcom/admaster/jice/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/admaster/jice/b/f;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/admaster/jice/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    new-instance v0, Lcom/admaster/jice/b/f;

    const-string v1, "WEBVIEW"

    invoke-direct {v0, v1, v3}, Lcom/admaster/jice/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admaster/jice/b/f;->WEBVIEW:Lcom/admaster/jice/b/f;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/admaster/jice/b/f;

    sget-object v1, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/admaster/jice/b/f;->WEBVIEW:Lcom/admaster/jice/b/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/admaster/jice/b/f;->a:[Lcom/admaster/jice/b/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admaster/jice/b/f;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/admaster/jice/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/b/f;

    return-object v0
.end method

.method public static values()[Lcom/admaster/jice/b/f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/admaster/jice/b/f;->a:[Lcom/admaster/jice/b/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/admaster/jice/b/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
