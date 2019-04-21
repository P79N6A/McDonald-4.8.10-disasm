.class public final Lcom/ensighten/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean v1, p0, Lcom/ensighten/U;->a:Z

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/ensighten/U;->b:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/ensighten/U;->c:I

    .line 9
    iput v1, p0, Lcom/ensighten/U;->d:I

    .line 10
    iput v1, p0, Lcom/ensighten/U;->e:I

    .line 13
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean v1, p0, Lcom/ensighten/U;->a:Z

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/ensighten/U;->b:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/ensighten/U;->c:I

    .line 9
    iput v1, p0, Lcom/ensighten/U;->d:I

    .line 10
    iput v1, p0, Lcom/ensighten/U;->e:I

    .line 16
    iput-boolean p1, p0, Lcom/ensighten/U;->a:Z

    .line 17
    iput-object p2, p0, Lcom/ensighten/U;->b:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/ensighten/U;->c:I

    .line 19
    iput p4, p0, Lcom/ensighten/U;->d:I

    .line 20
    iput p5, p0, Lcom/ensighten/U;->e:I

    .line 21
    return-void
.end method
