.class public final enum Lcom/ensighten/V;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ensighten/V;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ensighten/V;

.field public static final enum b:Lcom/ensighten/V;

.field public static final enum c:Lcom/ensighten/V;

.field public static final enum d:Lcom/ensighten/V;

.field public static final enum e:Lcom/ensighten/V;

.field public static final enum f:Lcom/ensighten/V;

.field public static final enum g:Lcom/ensighten/V;

.field public static final enum h:Lcom/ensighten/V;

.field private static final synthetic j:[Lcom/ensighten/V;


# instance fields
.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7
    new-instance v0, Lcom/ensighten/V;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v4, v3}, Lcom/ensighten/V;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "ADAPTER"

    invoke-direct {v0, v1, v3}, Lcom/ensighten/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "EXPANDABLE_LIST_ADAPTER"

    invoke-direct {v0, v1, v5}, Lcom/ensighten/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/V;->c:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "FRAGMENT"

    invoke-direct {v0, v1, v6, v3}, Lcom/ensighten/V;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "SUPPORT_FRAGMENT"

    invoke-direct {v0, v1, v7, v3}, Lcom/ensighten/V;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ensighten/V;->e:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "LAYOUT_INFLATER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ensighten/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/V;->f:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "PAGER_ADAPTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ensighten/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    new-instance v0, Lcom/ensighten/V;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ensighten/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ensighten/V;->h:Lcom/ensighten/V;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ensighten/V;

    sget-object v1, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ensighten/V;->c:Lcom/ensighten/V;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ensighten/V;->e:Lcom/ensighten/V;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ensighten/V;->f:Lcom/ensighten/V;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ensighten/V;->h:Lcom/ensighten/V;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ensighten/V;->j:[Lcom/ensighten/V;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ensighten/V;-><init>(Ljava/lang/String;IZ)V

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-boolean p3, p0, Lcom/ensighten/V;->i:Z

    .line 20
    return-void
.end method

.method public static values()[Lcom/ensighten/V;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ensighten/V;->j:[Lcom/ensighten/V;

    invoke-virtual {v0}, [Lcom/ensighten/V;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ensighten/V;

    return-object v0
.end method
