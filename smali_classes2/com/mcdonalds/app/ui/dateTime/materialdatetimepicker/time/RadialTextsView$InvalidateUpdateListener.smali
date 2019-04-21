.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTextsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;
    .param p2, "x1"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$1;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const-string v0, "onAnimationUpdate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 402
    return-void
.end method
