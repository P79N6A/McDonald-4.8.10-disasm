.class public final Lcom/ensighten/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ensighten/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/ensighten/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ensighten/c;-><init>(B)V

    sput-object v0, Lcom/ensighten/c$a;->a:Lcom/ensighten/c;

    return-void
.end method
