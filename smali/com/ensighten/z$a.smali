.class public final enum Lcom/ensighten/z$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ensighten/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ensighten/z$a;

.field public static final enum b:Lcom/ensighten/z$a;

.field public static final enum c:Lcom/ensighten/z$a;

.field private static final synthetic d:[Lcom/ensighten/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/ensighten/z$a;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v2}, Lcom/ensighten/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/z$a;->a:Lcom/ensighten/z$a;

    new-instance v0, Lcom/ensighten/z$a;

    const-string v1, "UPGRADE"

    invoke-direct {v0, v1, v3}, Lcom/ensighten/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/z$a;->b:Lcom/ensighten/z$a;

    new-instance v0, Lcom/ensighten/z$a;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v4}, Lcom/ensighten/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/z$a;->c:Lcom/ensighten/z$a;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ensighten/z$a;

    sget-object v1, Lcom/ensighten/z$a;->a:Lcom/ensighten/z$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ensighten/z$a;->b:Lcom/ensighten/z$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ensighten/z$a;->c:Lcom/ensighten/z$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ensighten/z$a;->d:[Lcom/ensighten/z$a;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/ensighten/z$a;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/ensighten/z$a;->d:[Lcom/ensighten/z$a;

    invoke-virtual {v0}, [Lcom/ensighten/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ensighten/z$a;

    return-object v0
.end method
