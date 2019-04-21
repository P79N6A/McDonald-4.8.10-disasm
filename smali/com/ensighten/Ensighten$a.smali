.class final Lcom/ensighten/Ensighten$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/Ensighten;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ensighten/Ensighten;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/ensighten/Ensighten;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ensighten/Ensighten;-><init>(B)V

    sput-object v0, Lcom/ensighten/Ensighten$a;->a:Lcom/ensighten/Ensighten;

    return-void
.end method
