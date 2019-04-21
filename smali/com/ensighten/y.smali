.class public final Lcom/ensighten/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/H;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "Ad"

    iput-object v0, p0, Lcom/ensighten/y;->a:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/ensighten/y;->b:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ensighten/y;->a:Ljava/lang/String;

    return-object v0
.end method
