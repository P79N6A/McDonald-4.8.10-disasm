.class public Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;
.super Ljava/lang/Object;
.source "ResponseAddrScoreCompare.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lhk/com/aisoft/easyaddrui/ResponseAddr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lhk/com/aisoft/easyaddrui/ResponseAddr;Lhk/com/aisoft/easyaddrui/ResponseAddr;)I
    .locals 2
    .param p1, "left"    # Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .param p2, "right"    # Lhk/com/aisoft/easyaddrui/ResponseAddr;

    .prologue
    .line 11
    iget-object v0, p2, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sScore:Ljava/lang/Double;

    iget-object v1, p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sScore:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;->compare(Lhk/com/aisoft/easyaddrui/ResponseAddr;Lhk/com/aisoft/easyaddrui/ResponseAddr;)I

    move-result v0

    return v0
.end method
