.class public Lhk/com/aisoft/easyaddrui/AddressReturn;
.super Ljava/lang/Object;
.source "AddressReturn.java"


# instance fields
.field public sAddress:Lhk/com/aisoft/easyaddrui/Address;

.field public sCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    .line 10
    return-void
.end method
