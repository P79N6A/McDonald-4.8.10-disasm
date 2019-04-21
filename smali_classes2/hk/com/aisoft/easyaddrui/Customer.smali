.class public Lhk/com/aisoft/easyaddrui/Customer;
.super Ljava/lang/Object;
.source "Customer.java"


# instance fields
.field public sContact:Ljava/lang/String;

.field public sPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Customer;->sContact:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/Customer;->sPhone:Ljava/lang/String;

    .line 10
    return-void
.end method
