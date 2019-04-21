.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;
    .param p2, "x1"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;)V

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

    .line 383
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 384
    return-void
.end method
