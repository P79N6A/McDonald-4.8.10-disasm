.class public final Lcom/ensighten/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ensighten/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 7
    const/4 v0, 0x1

    sput v0, Lcom/ensighten/g;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/ensighten/g;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/ensighten/g;->c:I

    sput v1, Lcom/ensighten/g;->d:I

    .line 6
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ensighten/g;->e:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ensighten/g;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
