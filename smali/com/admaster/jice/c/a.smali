.class public Lcom/admaster/jice/c/a;
.super Ljava/lang/Object;
.source "ConstantAPI.java"


# static fields
.field public static a:Lcom/admaster/jice/c/d;

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    .line 7
    const-string v0, ".adm_cookie"

    sput-object v0, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    .line 10
    const/4 v0, 0x5

    sput v0, Lcom/admaster/jice/c/a;->c:I

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/admaster/jice/c/a;->d:Ljava/lang/String;

    .line 48
    return-void
.end method
