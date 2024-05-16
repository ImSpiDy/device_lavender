LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
	AmbientSensePrebuilt \
	AppDirectedSMSService \
	arcore \
	arcore-1.42 \
	Browser2 \
	CarrierSetup \
	Chrome \
	Chrome64 \
	Chrome-Stub \
	ConnMO \
	ConnMetrics \
	DCMO \
	DevicePolicyPrebuilt \
	DevicePolicyPrebuilt-v10052480 \
	DevicePersonalizationPrebuiltPixel2020 \
	DMService \
	Drive \
	Via \
	GCS \
	GoogleCamera \
	MaestroPrebuilt \
	Maps \
	MyVerizonServices \
	PixelLiveWallpaperPrebuilt \
	PixelSetupWizardOverlay \
	PixelSetupWizardOverlay2021 \
	PixelSetupWizardStringsOverlay \
	Gmail \
	Gmail2 \
	PrebuiltGmail \
	Photos \
	Recorder \
	RecorderPrebuilt \
	RecorderPrebuilt_630544637 \
	Gallery \
	Gallery2 \
	StagWalls \
	PulseMusic \
	SafetyHubPrebuilt \
	SafetyHubSuwPrebuilt \
	SCONE \
	ScribePrebuilt \
	ScribePrebuilt_v7.0.633113815 \
	Showcase \
	SoundAmplifierPrebuilt \
	SoundAmplifierPrebuilt_v4.7.638126989 \
	SwitchAccessPrebuilt_1.15.0.629986523 \
	SprintDM \
	SprintHM \
	SpeechServicesByGoogle \
	Tycho \
	FM2 \
	WellbeingPrebuilt \
	Calendar \
	CalendarGoogle \
	CalendarGooglePrebuilt \
	USCCDM \
	AndroidAutoStub \
	AndroidAutoStubPrebuilt \
	Videos \
	Video \
	VZWAPNLib \
	VzwOmaTrigger \
	WallpapersBReel2020 \
	Wellbeing \
	YouTube \
	YouTubeMusicPrebuilt \
	SetupWizardPixelPrebuilt \
	TurboPrebuilt \
	TagGoogle \
	talkback \
	Symphonica \
	Gallery2 \
	Music \
	PersonalSafety \
	OpenDelta \
	UdfpsAnimations
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
