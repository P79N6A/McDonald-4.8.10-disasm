.class public final Lcom/ensighten/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/H;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "MoviePlayback"

    iput-object v0, p0, Lcom/ensighten/G;->e:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/ensighten/G;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/ensighten/G;->b:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/ensighten/G;->c:I

    .line 22
    iput p4, p0, Lcom/ensighten/G;->d:I

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ensighten/G;->e:Ljava/lang/String;

    return-object v0
.end method
