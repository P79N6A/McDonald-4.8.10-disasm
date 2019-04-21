.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;

.field private mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

.field private mCurrentItemShowing:I

.field private mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

.field private mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

.field private mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

.field private mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {p0, p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 110
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 111
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 112
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 114
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;

    .line 115
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    .line 118
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    .line 121
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    .line 123
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    .line 125
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    .line 128
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    .line 130
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    .line 132
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 141
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const v2, 0x7f0e008a

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 148
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 150
    iput-boolean v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$1000"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-boolean p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;IZZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$800"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v2, "access$900"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 3

    .prologue
    const-string v1, "getCurrentlyShowingValue"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 303
    .local v0, "currentIndex":I
    packed-switch v0, :pswitch_data_0

    .line 311
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 305
    :pswitch_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v1

    goto :goto_0

    .line 309
    :pswitch_2
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v1

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 4
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    const-string v0, "getDegreesFromCoords"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 616
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 627
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 618
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    .line 621
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    .line 624
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTimeFromDegrees(IZZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 10
    .param p1, "degrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceToVisibleValue"    # Z

    .prologue
    const-string v6, "getTimeFromDegrees"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v9, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 529
    const/4 v3, 0x0

    .line 599
    :goto_0
    return-object v3

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 534
    .local v1, "currentShowing":I
    if-nez p3, :cond_5

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 536
    .local v0, "allowFineGrained":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 537
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    .line 542
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 550
    const/4 v4, 0x6

    .line 555
    .local v4, "stepSize":I
    :goto_3
    if-nez v1, :cond_9

    .line 556
    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_8

    .line 557
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 558
    const/16 p1, 0x168

    .line 569
    :cond_2
    :goto_4
    div-int v5, p1, v4

    .line 571
    .local v5, "value":I
    if-nez v1, :cond_3

    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_3

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 572
    add-int/lit8 v5, v5, 0xc

    .line 575
    :cond_3
    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    .line 576
    invoke-interface {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v6

    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-eq v6, v7, :cond_4

    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_4

    .line 578
    add-int/lit8 v6, v5, 0xc

    rem-int/lit8 v5, v6, 0x18

    .line 582
    :cond_4
    packed-switch v1, :pswitch_data_1

    .line 596
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .local v3, "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto :goto_0

    .line 534
    .end local v0    # "allowFineGrained":Z
    .end local v3    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v4    # "stepSize":I
    .end local v5    # "value":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 539
    .restart local v0    # "allowFineGrained":Z
    :cond_6
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    goto :goto_2

    .line 544
    :pswitch_0
    const/16 v4, 0x1e

    .line 545
    .restart local v4    # "stepSize":I
    goto :goto_3

    .line 547
    .end local v4    # "stepSize":I
    :pswitch_1
    const/4 v4, 0x6

    .line 548
    .restart local v4    # "stepSize":I
    goto :goto_3

    .line 559
    :cond_7
    const/16 v6, 0x168

    if-ne p1, v6, :cond_2

    if-nez p2, :cond_2

    .line 560
    const/4 p1, 0x0

    goto :goto_4

    .line 562
    :cond_8
    if-nez p1, :cond_2

    .line 563
    const/16 p1, 0x168

    goto :goto_4

    .line 565
    :cond_9
    const/16 v6, 0x168

    if-ne p1, v6, :cond_2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_a

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 566
    :cond_a
    const/4 p1, 0x0

    goto :goto_4

    .line 584
    .restart local v5    # "value":I
    :pswitch_2
    move v2, v5

    .line 585
    .local v2, "hour":I
    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    const/16 v6, 0x168

    if-eq p1, v6, :cond_b

    add-int/lit8 v2, v2, 0xc

    .line 586
    :cond_b
    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v6

    if-nez v6, :cond_c

    const/16 v6, 0x168

    if-ne p1, v6, :cond_c

    const/4 v2, 0x0

    .line 587
    :cond_c
    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v7

    invoke-direct {v3, v2, v6, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 588
    .restart local v3    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto/16 :goto_0

    .line 590
    .end local v2    # "hour":I
    .end local v3    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :pswitch_3
    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v6

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v7

    invoke-direct {v3, v6, v5, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 591
    .restart local v3    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto/16 :goto_0

    .line 593
    .end local v3    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :pswitch_4
    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v6

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-direct {v3, v6, v7, v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 594
    .restart local v3    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto/16 :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isHourInnerCircle(I)Z
    .locals 6
    .param p1, "hourOfDay"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isHourInnerCircle"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/16 v3, 0xc

    if-gt p1, v3, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    .line 277
    .local v0, "isMorning":Z
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-eq v3, v4, :cond_0

    if-nez v0, :cond_2

    move v0, v1

    .line 278
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    return v1

    .end local v0    # "isMorning":Z
    :cond_1
    move v0, v2

    .line 275
    goto :goto_0

    .restart local v0    # "isMorning":Z
    :cond_2
    move v0, v2

    .line 277
    goto :goto_1

    :cond_3
    move v1, v2

    .line 278
    goto :goto_2
.end method

.method private preparePrefer30sMap()V
    .locals 7

    .prologue
    const/16 v6, 0x169

    const-string v4, "preparePrefer30sMap"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 367
    const/4 v3, 0x0

    .line 369
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 373
    .local v0, "count":I
    const/16 v2, 0x8

    .line 375
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 377
    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 380
    if-ne v0, v2, :cond_2

    .line 381
    add-int/lit8 v3, v3, 0x6

    .line 382
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 383
    const/4 v2, 0x7

    .line 389
    :goto_1
    const/4 v0, 0x1

    .line 375
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 385
    const/16 v2, 0xe

    goto :goto_1

    .line 387
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 391
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 394
    :cond_3
    return-void
.end method

.method private reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V
    .locals 10
    .param p1, "newSelection"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p2, "forceDrawDot"    # Z
    .param p3, "index"    # I

    .prologue
    const/4 v9, 0x0

    const-string v5, "reselectSelector"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 467
    packed-switch p3, :pswitch_data_0

    .line 512
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 525
    :goto_1
    return-void

    .line 470
    :pswitch_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    .line 471
    .local v1, "hour":I
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v2

    .line 472
    .local v2, "isInnerCircle":Z
    rem-int/lit8 v5, v1, 0xc

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v0, v5, 0xc

    .line 473
    .local v0, "degrees":I
    iget-boolean v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v5, :cond_1

    rem-int/lit8 v1, v1, 0xc

    .line 474
    :cond_1
    iget-boolean v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    add-int/lit8 v1, v1, 0xc

    .line 476
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v0, v2, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 477
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 479
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 480
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v5

    mul-int/lit8 v3, v5, 0x6

    .line 481
    .local v3, "minDegrees":I
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v3, v2, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 482
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 485
    .end local v3    # "minDegrees":I
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 486
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    mul-int/lit8 v4, v5, 0x6

    .line 487
    .local v4, "secDegrees":I
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v4, v2, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 488
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    goto :goto_0

    .line 493
    .end local v0    # "degrees":I
    .end local v1    # "hour":I
    .end local v2    # "isInnerCircle":Z
    .end local v4    # "secDegrees":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v5

    mul-int/lit8 v0, v5, 0x6

    .line 495
    .restart local v0    # "degrees":I
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v0, v9, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 496
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 498
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    mul-int/lit8 v4, v5, 0x6

    .line 500
    .restart local v4    # "secDegrees":I
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v4, v9, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 501
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    goto/16 :goto_0

    .line 506
    .end local v0    # "degrees":I
    .end local v4    # "secDegrees":I
    :pswitch_2
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    mul-int/lit8 v0, v5, 0x6

    .line 507
    .restart local v0    # "degrees":I
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v0, v9, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 508
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    goto/16 :goto_0

    .line 514
    .end local v0    # "degrees":I
    :pswitch_3
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 515
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto/16 :goto_1

    .line 518
    :pswitch_4
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 519
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto/16 :goto_1

    .line 522
    :pswitch_5
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 523
    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto/16 :goto_1

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 512
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 4
    .param p1, "newSelection"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p2, "currentItemShowing"    # I

    .prologue
    const-string v0, "roundToValidTime"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 447
    packed-switch p2, :pswitch_data_0

    .line 453
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-interface {v0, p1, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    :goto_0
    return-object v0

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    goto :goto_0

    .line 451
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-interface {v0, p1, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setItem(ILcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .prologue
    const/4 v3, 0x0

    const-string v0, "setItem"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-direct {p0, p2, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object p2

    .line 265
    iput-object p2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 266
    invoke-direct {p0, p2, v3, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    .line 267
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 10
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.RadialPickerLayout"

    const-string v5, "snapOnly30s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v9

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    const/16 v2, 0x1e

    .line 421
    .local v2, "stepSize":I
    div-int v3, p0, v2

    mul-int v1, v3, v2

    .line 422
    .local v1, "floor":I
    add-int v0, v1, v2

    .line 423
    .local v0, "ceiling":I
    if-ne p1, v9, :cond_0

    .line 424
    move p0, v0

    .line 437
    :goto_0
    return p0

    .line 425
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 426
    if-ne p0, v1, :cond_1

    .line 427
    sub-int/2addr v1, v2

    .line 429
    :cond_1
    move p0, v1

    goto :goto_0

    .line 431
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    .line 432
    move p0, v1

    goto :goto_0

    .line 434
    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private snapPrefer30s(I)I
    .locals 4
    .param p1, "degrees"    # I

    .prologue
    const-string v0, "snapPrefer30s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 405
    const/4 v0, -0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private transitionWithoutAnimation(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "transitionWithoutAnimation"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    if-nez p1, :cond_0

    move v0, v2

    .line 708
    .local v0, "hourAlpha":I
    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 709
    .local v1, "minuteAlpha":I
    :goto_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 710
    .local v2, "secondAlpha":I
    :goto_2
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 711
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 712
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 713
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 714
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 715
    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 716
    return-void

    .end local v0    # "hourAlpha":I
    .end local v1    # "minuteAlpha":I
    .end local v2    # "secondAlpha":I
    :cond_0
    move v0, v3

    .line 707
    goto :goto_0

    .restart local v0    # "hourAlpha":I
    :cond_1
    move v1, v3

    .line 708
    goto :goto_1

    .restart local v1    # "minuteAlpha":I
    :cond_2
    move v2, v3

    .line 709
    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    .line 948
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 949
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 950
    .local v1, "time":Ljava/util/Calendar;
    const/16 v6, 0xa

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 951
    const/16 v6, 0xc

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 952
    const/16 v6, 0xd

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 953
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 954
    .local v2, "millis":J
    const/4 v0, 0x1

    .line 955
    .local v0, "flags":I
    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_0

    .line 956
    or-int/lit16 v0, v0, 0x80

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "timeString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    .end local v0    # "flags":I
    .end local v1    # "time":Ljava/util/Calendar;
    .end local v2    # "millis":J
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    .prologue
    const-string v0, "getCurrentItemShowing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 636
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, -0x1

    .line 639
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 2

    .prologue
    const-string v0, "getHours"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .prologue
    const-string v0, "getIsCurrentlyAmOrPm"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->isPM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 2

    .prologue
    const-string v0, "getMinutes"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 2

    .prologue
    const-string v0, "getSeconds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v0

    return v0
.end method

.method public getTime()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 2

    .prologue
    const-string v0, "getTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Z)V
    .locals 46
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timePickerController"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;
    .param p3, "initialTime"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p4, "is24HourMode"    # Z

    .prologue
    const-string v2, "initialize"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "RadialPickerLayout"

    const-string v3, "Time has already been initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 170
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/CircleView;->invalidate()V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v2, v3, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 182
    :cond_2
    new-instance v19, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)V

    .line 189
    .local v19, "secondValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    new-instance v13, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)V

    .line 196
    .local v13, "minuteValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    new-instance v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$3;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)V

    .line 207
    .local v7, "hourValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v39, v0

    fill-array-data v39, :array_0

    .line 208
    .local v39, "hours":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v40, v0

    fill-array-data v40, :array_1

    .line 209
    .local v40, "hours_24":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_2

    .line 210
    .local v43, "minutes":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v44, v0

    fill-array-data v44, :array_3

    .line 211
    .local v44, "seconds":[I
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    .line 212
    .local v4, "hoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 213
    .local v42, "innerHoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v10, v2, [Ljava/lang/String;

    .line 214
    .local v10, "minutesTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 215
    .local v16, "secondsTexts":[Ljava/lang/String;
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v41

    if-ge v0, v2, :cond_6

    .line 216
    if-eqz p4, :cond_5

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v40, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v4, v41

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v39, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v42, v41

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v43, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v41

    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v44, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v41

    .line 215
    add-int/lit8 v41, v41, 0x1

    goto :goto_3

    .line 171
    .end local v4    # "hoursTexts":[Ljava/lang/String;
    .end local v7    # "hourValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .end local v10    # "minutesTexts":[Ljava/lang/String;
    .end local v13    # "minuteValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .end local v16    # "secondsTexts":[Ljava/lang/String;
    .end local v19    # "secondValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .end local v39    # "hours":[I
    .end local v40    # "hours_24":[I
    .end local v41    # "i":I
    .end local v42    # "innerHoursTexts":[Ljava/lang/String;
    .end local v43    # "minutes":[I
    .end local v44    # "seconds":[I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 177
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 217
    .restart local v4    # "hoursTexts":[Ljava/lang/String;
    .restart local v7    # "hourValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .restart local v10    # "minutesTexts":[Ljava/lang/String;
    .restart local v13    # "minuteValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .restart local v16    # "secondsTexts":[Ljava/lang/String;
    .restart local v19    # "secondValidator":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .restart local v39    # "hours":[I
    .restart local v40    # "hours_24":[I
    .restart local v41    # "i":I
    .restart local v42    # "innerHoursTexts":[Ljava/lang/String;
    .restart local v43    # "minutes":[I
    .restart local v44    # "seconds":[I
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v39, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 224
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v2, v3, :cond_7

    .line 225
    move-object/from16 v45, v4

    .line 226
    .local v45, "temp":[Ljava/lang/String;
    move-object/from16 v4, v42

    .line 227
    move-object/from16 v42, v45

    .line 230
    .end local v45    # "temp":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    if-eqz p4, :cond_8

    move-object/from16 v5, v42

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    if-eqz p4, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    :goto_6
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 234
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v15, p1

    invoke-virtual/range {v14 .. v20}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 242
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 243
    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    mul-int/lit8 v25, v2, 0x1e

    .line 244
    .local v25, "hourDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    .line 245
    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v26

    move-object/from16 v21, p1

    move/from16 v23, p4

    .line 244
    invoke-virtual/range {v20 .. v26}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v2

    mul-int/lit8 v31, v2, 0x6

    .line 247
    .local v31, "minuteDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p1

    invoke-virtual/range {v26 .. v32}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v2

    mul-int/lit8 v37, v2, 0x6

    .line 250
    .local v37, "secondDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v33, p1

    invoke-virtual/range {v32 .. v38}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 253
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_0

    .line 230
    .end local v25    # "hourDegrees":I
    .end local v31    # "minuteDegrees":I
    .end local v37    # "secondDegrees":I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 232
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    aget v2, v39, v2

    goto/16 :goto_6

    .line 207
    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 208
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 209
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data

    .line 210
    :array_3
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x2000

    const/16 v3, 0x1000

    const-string v0, "onInitializeAccessibilityNodeInfo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 929
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 930
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 939
    :goto_0
    return-void

    .line 932
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 933
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 934
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 936
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 937
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-string v14, "onTouch"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 721
    .local v6, "eventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 724
    .local v7, "eventY":F
    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/Boolean;

    .line 725
    .local v9, "isInnerCircle":[Ljava/lang/Boolean;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v9, v14

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 902
    :cond_0
    :goto_0
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 729
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v14, :cond_1

    .line 730
    const/4 v14, 0x1

    goto :goto_1

    .line 733
    :cond_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 734
    move-object/from16 v0, p0

    iput v7, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 736
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 737
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 738
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 740
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->getVersion()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    move-result-object v14

    sget-object v15, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v14, v15, :cond_4

    .line 741
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v6, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 745
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 749
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$4;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 783
    :cond_3
    :goto_3
    const/4 v14, 0x1

    goto :goto_1

    .line 743
    :cond_4
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_2

    .line 760
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v8

    .line 762
    .local v8, "forceLegal":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 763
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v12

    .line 764
    .local v12, "selectedTime":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    invoke-interface {v14, v12, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 765
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 768
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$5;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 785
    .end local v8    # "forceLegal":Z
    .end local v12    # "selectedTime":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v14, :cond_7

    .line 787
    const-string v14, "RadialPickerLayout"

    const-string v15, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 791
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 792
    .local v4, "dY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v14, v6, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 794
    .local v3, "dX":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v14, v14

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v14, v14

    cmpg-float v14, v4, v14

    if-lez v14, :cond_0

    .line 802
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 803
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v6, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v10

    .line 805
    .local v10, "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v10, v14, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 808
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 813
    .end local v10    # "isTouchingAmOrPm":I
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 819
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 820
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 821
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v14, v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v5

    .line 823
    .local v5, "degrees":I
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 824
    .local v2, "currentShowing":I
    const/4 v14, 0x1

    if-ne v2, v14, :cond_d

    .line 825
    if-ltz v5, :cond_b

    const/16 v14, 0x5a

    if-le v5, v14, :cond_c

    :cond_b
    const/16 v14, 0x10e

    if-lt v5, v14, :cond_10

    .line 826
    :cond_c
    const/4 v5, 0x0

    .line 831
    :cond_d
    :goto_4
    const/4 v14, -0x1

    if-eq v5, v14, :cond_f

    .line 832
    const/4 v14, 0x0

    aget-object v14, v9, v14

    .line 833
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v14

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    .line 832
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v13

    .line 836
    .local v13, "value":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    .line 837
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v14, v13}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 838
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 839
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 840
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v14, v13}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 843
    .end local v13    # "value":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_f
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 828
    :cond_10
    const/16 v5, 0xb4

    goto :goto_4

    .line 845
    .end local v2    # "currentShowing":I
    .end local v3    # "dX":F
    .end local v4    # "dY":F
    .end local v5    # "degrees":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v14, :cond_11

    .line 847
    const-string v14, "RadialPickerLayout"

    const-string v15, "Input was disabled, but received ACTION_UP."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->enablePicker()V

    .line 849
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 852
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 853
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 856
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    .line 857
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v6, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v10

    .line 858
    .restart local v10    # "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 861
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v10, v14, :cond_14

    .line 862
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v14

    if-eq v14, v10, :cond_14

    .line 864
    new-instance v11, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-direct {v11, v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 865
    .local v11, "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-nez v14, :cond_15

    invoke-virtual {v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->setAM()V

    .line 867
    :cond_13
    :goto_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v11

    .line 868
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    .line 869
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 870
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v14, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 874
    .end local v11    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_14
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 866
    .restart local v11    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    invoke-virtual {v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->setPM()V

    goto :goto_5

    .line 879
    .end local v10    # "isTouchingAmOrPm":I
    .end local v11    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_16
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1a

    .line 880
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v14, v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v5

    .line 881
    .restart local v5    # "degrees":I
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 882
    .restart local v2    # "currentShowing":I
    const/4 v14, 0x1

    if-ne v2, v14, :cond_19

    .line 883
    if-ltz v5, :cond_17

    const/16 v14, 0x5a

    if-le v5, v14, :cond_18

    :cond_17
    const/16 v14, 0x10e

    if-lt v5, v14, :cond_1b

    .line 884
    :cond_18
    const/4 v5, 0x0

    .line 888
    :cond_19
    :goto_6
    const/4 v14, -0x1

    if-eq v5, v14, :cond_1a

    .line 889
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v14, :cond_1c

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v13

    .line 890
    .restart local v13    # "value":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v13

    .line 891
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    .line 892
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v14, v13}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->advancePicker(I)V

    .line 897
    .end local v2    # "currentShowing":I
    .end local v5    # "degrees":I
    .end local v13    # "value":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_1a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 898
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 886
    .restart local v2    # "currentShowing":I
    .restart local v5    # "degrees":I
    :cond_1b
    const/16 v5, 0xb4

    goto :goto_6

    .line 889
    :cond_1c
    const/4 v14, 0x0

    goto :goto_7

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 14
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const-string v10, "performAccessibilityAction"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 971
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 972
    const/4 v10, 0x1

    .line 1058
    :goto_0
    return v10

    .line 975
    :cond_0
    const/4 v1, 0x0

    .line 978
    .local v1, "changeMultiplier":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_4

    .line 979
    const/16 v4, 0x1000

    .line 980
    .local v4, "forward":I
    const/16 v0, 0x2000

    .line 985
    .local v0, "backward":I
    :goto_1
    if-ne p1, v4, :cond_5

    .line 986
    const/4 v1, 0x1

    .line 990
    :cond_1
    :goto_2
    if-eqz v1, :cond_b

    .line 991
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v9

    .line 992
    .local v9, "value":I
    const/4 v8, 0x0

    .line 993
    .local v8, "stepSize":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 994
    .local v2, "currentItemShowing":I
    if-nez v2, :cond_6

    .line 995
    const/16 v8, 0x1e

    .line 996
    rem-int/lit8 v9, v9, 0xc

    .line 1003
    :cond_2
    :goto_3
    mul-int v3, v9, v8

    .line 1004
    .local v3, "degrees":I
    invoke-static {v3, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v3

    .line 1005
    div-int v9, v3, v8

    .line 1006
    const/4 v5, 0x0

    .line 1007
    .local v5, "maxValue":I
    const/4 v6, 0x0

    .line 1008
    .local v6, "minValue":I
    if-nez v2, :cond_9

    .line 1009
    iget-boolean v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v10, :cond_8

    .line 1010
    const/16 v5, 0x17

    .line 1018
    :goto_4
    if-le v9, v5, :cond_a

    .line 1020
    move v9, v6

    .line 1027
    :cond_3
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 1050
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1053
    .local v7, "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :goto_6
    invoke-direct {p0, v2, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setItem(ILcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 1054
    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v10, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 1055
    const/4 v10, 0x1

    goto :goto_0

    .line 982
    .end local v0    # "backward":I
    .end local v2    # "currentItemShowing":I
    .end local v3    # "degrees":I
    .end local v4    # "forward":I
    .end local v5    # "maxValue":I
    .end local v6    # "minValue":I
    .end local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v8    # "stepSize":I
    .end local v9    # "value":I
    :cond_4
    const/16 v4, 0x1000

    .line 983
    .restart local v4    # "forward":I
    const/16 v0, 0x2000

    .restart local v0    # "backward":I
    goto :goto_1

    .line 987
    :cond_5
    if-ne p1, v0, :cond_1

    .line 988
    const/4 v1, -0x1

    goto :goto_2

    .line 997
    .restart local v2    # "currentItemShowing":I
    .restart local v8    # "stepSize":I
    .restart local v9    # "value":I
    :cond_6
    const/4 v10, 0x1

    if-ne v2, v10, :cond_7

    .line 998
    const/4 v8, 0x6

    goto :goto_3

    .line 999
    :cond_7
    const/4 v10, 0x2

    if-ne v2, v10, :cond_2

    .line 1000
    const/4 v8, 0x6

    goto :goto_3

    .line 1012
    .restart local v3    # "degrees":I
    .restart local v5    # "maxValue":I
    .restart local v6    # "minValue":I
    :cond_8
    const/16 v5, 0xc

    .line 1013
    const/4 v6, 0x1

    goto :goto_4

    .line 1016
    :cond_9
    const/16 v5, 0x37

    goto :goto_4

    .line 1021
    :cond_a
    if-ge v9, v6, :cond_3

    .line 1023
    move v9, v5

    goto :goto_5

    .line 1029
    :pswitch_0
    new-instance v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1031
    invoke-virtual {v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v10

    iget-object v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1032
    invoke-virtual {v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v11

    invoke-direct {v7, v9, v10, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 1034
    .restart local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto :goto_6

    .line 1036
    .end local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :pswitch_1
    new-instance v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1037
    invoke-virtual {v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v10

    iget-object v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1039
    invoke-virtual {v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v11

    invoke-direct {v7, v10, v9, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 1041
    .restart local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto :goto_6

    .line 1043
    .end local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :pswitch_2
    new-instance v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v10, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1044
    invoke-virtual {v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v10

    iget-object v11, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 1045
    invoke-virtual {v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v11

    invoke-direct {v7, v10, v11, v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 1048
    .restart local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    goto :goto_6

    .line 1058
    .end local v2    # "currentItemShowing":I
    .end local v3    # "degrees":I
    .end local v5    # "maxValue":I
    .end local v6    # "minValue":I
    .end local v7    # "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v8    # "stepSize":I
    .end local v9    # "value":I
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAmOrPm(I)V
    .locals 6
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "setAmOrPm"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 330
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 331
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 332
    .local v0, "newSelection":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->setAM()V

    .line 334
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;I)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    .line 335
    invoke-direct {p0, v0, v4, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    .line 336
    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 337
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 338
    return-void

    .line 333
    :cond_1
    if-ne p1, v5, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->setPM()V

    goto :goto_0
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "setCurrentItemShowing"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    if-eqz p1, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v6, :cond_0

    .line 648
    const-string v2, "RadialPickerLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimePicker does not support view at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 653
    .local v1, "lastIndex":I
    iput p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    .line 654
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->getTime()Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v2

    invoke-direct {p0, v2, v5, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ZI)V

    .line 656
    if-eqz p2, :cond_9

    if-eq p1, v1, :cond_9

    .line 657
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 658
    .local v0, "anims":[Landroid/animation/ObjectAnimator;
    if-ne p1, v5, :cond_3

    if-nez v1, :cond_3

    .line 659
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 660
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 661
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 662
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 690
    :cond_1
    :goto_1
    aget-object v2, v0, v7

    if-eqz v2, :cond_8

    aget-object v2, v0, v5

    if-eqz v2, :cond_8

    aget-object v2, v0, v6

    if-eqz v2, :cond_8

    aget-object v2, v0, v8

    if-eqz v2, :cond_8

    .line 692
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 695
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    .line 696
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 697
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 663
    :cond_3
    if-nez p1, :cond_4

    if-ne v1, v5, :cond_4

    .line 664
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 665
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 666
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 667
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    goto :goto_1

    .line 668
    :cond_4
    if-ne p1, v5, :cond_5

    if-ne v1, v6, :cond_5

    .line 669
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 670
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 671
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 672
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    goto :goto_1

    .line 673
    :cond_5
    if-nez p1, :cond_6

    if-ne v1, v6, :cond_6

    .line 674
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 675
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 676
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 677
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    goto/16 :goto_1

    .line 678
    :cond_6
    if-ne p1, v6, :cond_7

    if-ne v1, v5, :cond_7

    .line 679
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 680
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 681
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 682
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    goto/16 :goto_1

    .line 683
    :cond_7
    if-ne p1, v6, :cond_1

    if-nez v1, :cond_1

    .line 684
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 685
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 686
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 687
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    goto/16 :goto_1

    .line 699
    :cond_8
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->transitionWithoutAnimation(I)V

    goto/16 :goto_0

    .line 702
    .end local v0    # "anims":[Landroid/animation/ObjectAnimator;
    :cond_9
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->transitionWithoutAnimation(I)V

    goto/16 :goto_0
.end method

.method public setOnValueSelectedListener(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .prologue
    const-string v0, "setOnValueSelectedListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .line 155
    return-void
.end method

.method public setTime(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V
    .locals 3
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setTime"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-direct {p0, v2, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->setItem(ILcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 258
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 5
    .param p1, "inputEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "trySettingInputEnabled"

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 917
    :goto_0
    return v0

    .line 915
    :cond_0
    iput-boolean p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 916
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 917
    goto :goto_0
.end method
