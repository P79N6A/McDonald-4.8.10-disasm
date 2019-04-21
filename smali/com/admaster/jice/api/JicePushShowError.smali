.class public final enum Lcom/admaster/jice/api/JicePushShowError;
.super Ljava/lang/Enum;
.source "JicePushShowError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/admaster/jice/api/JicePushShowError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum JicePushIsDownloading:Lcom/admaster/jice/api/JicePushShowError;

.field public static final enum JicePushIsShowing:Lcom/admaster/jice/api/JicePushShowError;

.field public static final enum JicePushNoData:Lcom/admaster/jice/api/JicePushShowError;

.field public static final enum JicePushNoNet:Lcom/admaster/jice/api/JicePushShowError;

.field private static final synthetic a:[Lcom/admaster/jice/api/JicePushShowError;


# instance fields
.field private msg:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/admaster/jice/api/JicePushShowError;

    const-string v1, "JicePushNoData"

    const/16 v2, 0x3e8

    const-string/jumbo v3, "\u6682\u65f6\u6ca1\u6709\u53ef\u4ee5\u5c55\u793a\u7684\u63a8\u9001"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/admaster/jice/api/JicePushShowError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/api/JicePushShowError;->JicePushNoData:Lcom/admaster/jice/api/JicePushShowError;

    .line 13
    new-instance v0, Lcom/admaster/jice/api/JicePushShowError;

    const-string v1, "JicePushIsShowing"

    const/16 v2, 0x3e9

    const-string/jumbo v3, "\u53ca\u7b56\u63a8\u9001\u5df2\u7ecf\u6b63\u5728\u5c55\u793a"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/admaster/jice/api/JicePushShowError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsShowing:Lcom/admaster/jice/api/JicePushShowError;

    .line 14
    new-instance v0, Lcom/admaster/jice/api/JicePushShowError;

    const-string v1, "JicePushNoNet"

    const/16 v2, 0x3ea

    const-string/jumbo v3, "\u6682\u65f6\u6ca1\u6709\u7f51\u7edc,\u65e0\u6cd5\u5b8c\u6210\u63a8\u9001\u5c55\u793a"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/admaster/jice/api/JicePushShowError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/api/JicePushShowError;->JicePushNoNet:Lcom/admaster/jice/api/JicePushShowError;

    .line 15
    new-instance v0, Lcom/admaster/jice/api/JicePushShowError;

    const-string v1, "JicePushIsDownloading"

    const/16 v2, 0x3eb

    const-string/jumbo v3, "\u6b63\u5728\u4e0b\u8f7d\u63a8\u9001\u6d3b\u52a8\u7684\u914d\u7f6e\u548c\u7d20\u6750"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/admaster/jice/api/JicePushShowError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsDownloading:Lcom/admaster/jice/api/JicePushShowError;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/admaster/jice/api/JicePushShowError;

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushNoData:Lcom/admaster/jice/api/JicePushShowError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsShowing:Lcom/admaster/jice/api/JicePushShowError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushNoNet:Lcom/admaster/jice/api/JicePushShowError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsDownloading:Lcom/admaster/jice/api/JicePushShowError;

    aput-object v1, v0, v7

    sput-object v0, Lcom/admaster/jice/api/JicePushShowError;->a:[Lcom/admaster/jice/api/JicePushShowError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/admaster/jice/api/JicePushShowError;->type:I

    .line 22
    iput-object p4, p0, Lcom/admaster/jice/api/JicePushShowError;->msg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admaster/jice/api/JicePushShowError;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/admaster/jice/api/JicePushShowError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/api/JicePushShowError;

    return-object v0
.end method

.method public static values()[Lcom/admaster/jice/api/JicePushShowError;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/admaster/jice/api/JicePushShowError;->a:[Lcom/admaster/jice/api/JicePushShowError;

    array-length v1, v0

    new-array v2, v1, [Lcom/admaster/jice/api/JicePushShowError;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "ErrorCode:%d ErrorMsg:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/admaster/jice/api/JicePushShowError;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/admaster/jice/api/JicePushShowError;->msg:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
