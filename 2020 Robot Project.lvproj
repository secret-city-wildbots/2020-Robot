﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="Target" Type="RT myRIO">
		<Property Name="alias.name" Type="Str">Target</Property>
		<Property Name="alias.value" Type="Str">10.42.65.2</Property>
		<Property Name="CCSymbols" Type="Str">OS,Linux;CPU,ARM;DeviceCode,76F2;TARGET_TYPE,RT;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76F2</Property>
		<Property Name="crio.family" Type="Str">ARMLinux</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.DoNotReboot" Type="Bool">true</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/home/lvuser/natinst/bin/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">true</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Autonomous" Type="Folder">
			<Item Name="Subsystem Sequencer" Type="Folder">
				<Item Name="ManipChangeState.vi" Type="VI" URL="../ManipChangeState.vi"/>
				<Item Name="ManipEnd.vi" Type="VI" URL="../ManipEnd.vi"/>
				<Item Name="ManipIntake.vi" Type="VI" URL="../ManipIntake.vi"/>
				<Item Name="ManipWait.vi" Type="VI" URL="../ManipWait.vi"/>
			</Item>
			<Item Name="Drive Sequencer" Type="Folder">
				<Item Name="Support" Type="Folder">
					<Item Name="PathSearch.vi" Type="VI" URL="../PathSearch.vi"/>
					<Item Name="AutoFeedForward.vi" Type="VI" URL="../AutoFeedForward.vi"/>
				</Item>
				<Item Name="DriveDistanceX.vi" Type="VI" URL="../DriveDistanceX.vi"/>
				<Item Name="DriveDistanceY.vi" Type="VI" URL="../DriveDistanceY.vi"/>
				<Item Name="DriveAngleH.vi" Type="VI" URL="../DriveAngleH.vi"/>
				<Item Name="DriveWait.vi" Type="VI" URL="../DriveWait.vi"/>
				<Item Name="DrivePath.vi" Type="VI" URL="../DrivePath.vi"/>
				<Item Name="SetRobotPosition.vi" Type="VI" URL="../SetRobotPosition.vi"/>
			</Item>
			<Item Name="AutoInit.vi" Type="VI" URL="../AutoInit.vi"/>
			<Item Name="AutoParser.vi" Type="VI" URL="../AutoParser.vi"/>
			<Item Name="AutoPlaySelection.vi" Type="VI" URL="../AutoPlaySelection.vi"/>
			<Item Name="ParameterParser.vi" Type="VI" URL="../ParameterParser.vi"/>
		</Item>
		<Item Name="Driver Station" Type="Folder">
			<Item Name="DriverStationGetData.vi" Type="VI" URL="../DriverStationGetData.vi"/>
			<Item Name="DriverStationGetInstructions.vi" Type="VI" URL="../DriverStationGetInstructions.vi"/>
			<Item Name="DriverStationPushData.vi" Type="VI" URL="../DriverStationPushData.vi"/>
		</Item>
		<Item Name="FIRST Architecture" Type="Folder">
			<Item Name="Autonomous Independent.vi" Type="VI" URL="../Autonomous Independent.vi"/>
			<Item Name="Disabled.vi" Type="VI" URL="../Disabled.vi"/>
			<Item Name="Teleop.vi" Type="VI" URL="../Teleop.vi"/>
			<Item Name="Test.vi" Type="VI" URL="../Test.vi"/>
			<Item Name="Vision Processing.vi" Type="VI" URL="../Vision Processing.vi"/>
			<Item Name="Robot Global Data.vi" Type="VI" URL="../Robot Global Data.vi"/>
		</Item>
		<Item Name="Global Variables" Type="Folder">
			<Item Name="constants.vi" Type="VI" URL="../constants.vi"/>
			<Item Name="dsdata.vi" Type="VI" URL="../dsdata.vi"/>
			<Item Name="dsinstructions.vi" Type="VI" URL="../dsinstructions.vi"/>
			<Item Name="outputs.vi" Type="VI" URL="../outputs.vi"/>
			<Item Name="refnums.vi" Type="VI" URL="../refnums.vi"/>
			<Item Name="autoinfo.vi" Type="VI" URL="../autoinfo.vi"/>
			<Item Name="pdpterminals.vi" Type="VI" URL="../pdpterminals.vi"/>
			<Item Name="sensors.vi" Type="VI" URL="../sensors.vi"/>
		</Item>
		<Item Name="Initialization" Type="Folder">
			<Item Name="Begin.vi" Type="VI" URL="../Begin.vi"/>
			<Item Name="Finish.vi" Type="VI" URL="../Finish.vi"/>
			<Item Name="InitConstants.vi" Type="VI" URL="../InitConstants.vi"/>
			<Item Name="InitDrive.vi" Type="VI" URL="../InitDrive.vi"/>
			<Item Name="InitSensors.vi" Type="VI" URL="../InitSensors.vi"/>
			<Item Name="InitStaticVIRefs.vi" Type="VI" URL="../InitStaticVIRefs.vi"/>
			<Item Name="InitPneumatics.vi" Type="VI" URL="../InitPneumatics.vi"/>
			<Item Name="InitUserInterface.vi" Type="VI" URL="../InitUserInterface.vi"/>
			<Item Name="InitDecorations.vi" Type="VI" URL="../InitDecorations.vi"/>
			<Item Name="InitShooter.vi" Type="VI" URL="../InitShooter.vi"/>
			<Item Name="InitMagazine.vi" Type="VI" URL="../InitMagazine.vi"/>
		</Item>
		<Item Name="lib" Type="Folder" URL="/&lt;vilib&gt;/addons/FRC_ThirdParty/lib">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Sensors" Type="Folder">
			<Item Name="ActuatorFaults.vi" Type="VI" URL="../ActuatorFaults.vi"/>
			<Item Name="ConvertPotentiometerToDegrees.vi" Type="VI" URL="../ConvertPotentiometerToDegrees.vi"/>
			<Item Name="GetHighPrioritySensors.vi" Type="VI" URL="../GetHighPrioritySensors.vi"/>
			<Item Name="KnowPosition.vi" Type="VI" URL="../KnowPosition.vi"/>
			<Item Name="SwerveModuleOdometry.vi" Type="VI" URL="../SwerveModuleOdometry.vi"/>
			<Item Name="PigeonSensorReadings.vi" Type="VI" URL="../PigeonSensorReadings.vi"/>
			<Item Name="GetLowPrioritySensors.vi" Type="VI" URL="../GetLowPrioritySensors.vi"/>
			<Item Name="GetVision.vi" Type="VI" URL="../GetVision.vi"/>
			<Item Name="RobotHeadingAngleWrap.vi" Type="VI" URL="../RobotHeadingAngleWrap.vi"/>
		</Item>
		<Item Name="Subsystem Drive" Type="Folder">
			<Item Name="DriveStateController.vi" Type="VI" URL="../DriveStateController.vi"/>
			<Item Name="FieldOrientedRotate.vi" Type="VI" URL="../FieldOrientedRotate.vi"/>
			<Item Name="SwerveChooseAngle.vi" Type="VI" URL="../SwerveChooseAngle.vi"/>
			<Item Name="LatchGoalAngle.vi" Type="VI" URL="../LatchGoalAngle.vi"/>
			<Item Name="SwerveCalculations.vi" Type="VI" URL="../SwerveCalculations.vi"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="CustomPID_v3.0.vi" Type="VI" URL="../CustomPID_v3.0.vi"/>
			<Item Name="EdgeTrigger.vi" Type="VI" URL="../EdgeTrigger.vi"/>
			<Item Name="Elapsed Times.vi" Type="VI" URL="../Elapsed Times.vi"/>
			<Item Name="ReadCSV.vi" Type="VI" URL="../ReadCSV.vi"/>
			<Item Name="TimeThreshold.vi" Type="VI" URL="../TimeThreshold.vi"/>
			<Item Name="Toggle.vi" Type="VI" URL="../Toggle.vi"/>
			<Item Name="TriggerUpdate.vim" Type="VI" URL="../TriggerUpdate.vim"/>
			<Item Name="PulseOutput.vi" Type="VI" URL="../PulseOutput.vi"/>
			<Item Name="ErrorLatch.vi" Type="VI" URL="../ErrorLatch.vi"/>
			<Item Name="StateSelection.vi" Type="VI" URL="../StateSelection.vi"/>
		</Item>
		<Item Name="Subsystem Shooter" Type="Folder">
			<Item Name="ShooterStateController.vi" Type="VI" URL="../ShooterStateController.vi"/>
		</Item>
		<Item Name="Subsystem Control Panel" Type="Folder"/>
		<Item Name="Subsystem Magazine" Type="Folder">
			<Item Name="IntakeStateController.vi" Type="VI" URL="../IntakeStateController.vi"/>
		</Item>
		<Item Name="Subsystem Climber" Type="Folder"/>
		<Item Name="Subsystem Miscellaneous " Type="Folder">
			<Item Name="LEDStateController.vi" Type="VI" URL="../LEDStateController.vi"/>
			<Item Name="CameraStateController.vi" Type="VI" URL="../CameraStateController.vi"/>
		</Item>
		<Item Name="Robot Main.vi" Type="VI" URL="../Robot Main.vi"/>
		<Item Name="Periodic Tasks.vi" Type="VI" URL="../Periodic Tasks.vi"/>
		<Item Name="MasterStateController.vi" Type="VI" URL="../MasterStateController.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Build Entry Assign Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Build Entry Assign Buffer.vi"/>
				<Item Name="Cached Name Lookup.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Cached Name Lookup.vi"/>
				<Item Name="Cast to Little Endian Byte Array.vim" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Cast to Little Endian Byte Array.vim"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Convert NT Boolean to LV String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT Boolean to LV String.vi"/>
				<Item Name="Convert NT Types.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert NT Types.vi"/>
				<Item Name="Convert String to NT Boolean Array Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT Boolean Array Buffer.vi"/>
				<Item Name="Convert String to NT Numeric Array Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT Numeric Array Buffer.vi"/>
				<Item Name="Convert String to NT String Array Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT String Array Buffer.vi"/>
				<Item Name="Convert String to NT String Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Convert String to NT String Buffer.vi"/>
				<Item Name="Create Actual Table Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Create Actual Table Name.vi"/>
				<Item Name="CTRE_ErrorHandle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Error/CTRE_ErrorHandle.vi"/>
				<Item Name="CTRE_LibraryCall_ErrorHandle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Error/CTRE_LibraryCall_ErrorHandle.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_ControlMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/Controls/CTRE_Phoenix_MotorControl_ControlMode.ctl"/>
				<Item Name="CTRE_Phoenix_MotorControl_DevRefData.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/Controls/CTRE_Phoenix_MotorControl_DevRefData.ctl"/>
				<Item Name="CTRE_PigeonIMU_ConnectionType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_ConnectionType.ctl"/>
				<Item Name="CTRE_PigeonIMU_DeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_DeviceRef.ctl"/>
				<Item Name="CTRE_PigeonIMU_RefNumRegistryGet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_RefNumRegistryGet.vi"/>
				<Item Name="CTRE_PigeonIMU_TareType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_TareType.ctl"/>
				<Item Name="DriverLib.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Controls/DriverLib.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Field Data Manager.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field Data Manager.vi"/>
				<Item Name="Field Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field Data.ctl"/>
				<Item Name="Field ID.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field ID.ctl"/>
				<Item Name="Field Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Field Type.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="FPGA_AIAverageBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIAverageBits.vi"/>
				<Item Name="FPGA_AIChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIChannel.ctl"/>
				<Item Name="FPGA_AIDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIDevRef.ctl"/>
				<Item Name="FPGA_AIERRInvalidAccumulatorChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIERRInvalidAccumulatorChannel.vi"/>
				<Item Name="FPGA_AIERRInvalidAnalogChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIERRInvalidAnalogChannel.vi"/>
				<Item Name="FPGA_AIOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIOpen.vi"/>
				<Item Name="FPGA_AIOversampleBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIOversampleBits.vi"/>
				<Item Name="FPGA_AIReadAveraged.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadAveraged.vi"/>
				<Item Name="FPGA_AIReadLSBWeight.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadLSBWeight.vi"/>
				<Item Name="FPGA_AIReadOversampleBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadOversampleBits.vi"/>
				<Item Name="FPGA_AIWriteAccumulatorReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteAccumulatorReset.vi"/>
				<Item Name="FPGA_AIWriteAverageBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteAverageBits.vi"/>
				<Item Name="FPGA_AIWriteConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteConfig.vi"/>
				<Item Name="FPGA_AIWriteOversampleBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteOversampleBits.vi"/>
				<Item Name="FPGA_AIWriteScanList.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteScanList.vi"/>
				<Item Name="FPGA_CounterERRInvalidResource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterERRInvalidResource.vi"/>
				<Item Name="FPGA_DIOChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOChannel.ctl"/>
				<Item Name="FPGA_DIODevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIODevRef.ctl"/>
				<Item Name="FPGA_DIOERRInvalidPWMChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOERRInvalidPWMChannel.vi"/>
				<Item Name="FPGA_DIOOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOOpen.vi"/>
				<Item Name="FPGA_DIOPWMChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOPWMChannel.ctl"/>
				<Item Name="FPGA_DIOReadDO_PWMDutyCycle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadDO_PWMDutyCycle.vi"/>
				<Item Name="FPGA_DIOReadLoopTiming.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadLoopTiming.vi"/>
				<Item Name="FPGA_DIOReadMXPSpecialFunction.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadMXPSpecialFunction.vi"/>
				<Item Name="FPGA_DIOReadOutputEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadOutputEnable.vi"/>
				<Item Name="FPGA_DIOReadPWMValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadPWMValue.vi"/>
				<Item Name="FPGA_DIOWriteDO_PWMConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteDO_PWMConfig.vi"/>
				<Item Name="FPGA_DIOWriteDO_PWMDutyCycle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteDO_PWMDutyCycle.vi"/>
				<Item Name="FPGA_DIOWriteMXPSpecialFunction.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteMXPSpecialFunction.vi"/>
				<Item Name="FPGA_DIOWriteOutputEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteOutputEnable.vi"/>
				<Item Name="FPGA_DIOWritePWMMinHigh.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMMinHigh.vi"/>
				<Item Name="FPGA_DIOWritePWMPeriod.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMPeriod.vi"/>
				<Item Name="FPGA_DIOWritePWMPeriodScale.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMPeriodScale.vi"/>
				<Item Name="FPGA_DIOWritePWMValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMValue.vi"/>
				<Item Name="FPGA_DIOWriteSlowValueRelayFwd.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteSlowValueRelayFwd.vi"/>
				<Item Name="FPGA_DIOWriteSlowValueRelayRev.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteSlowValueRelayRev.vi"/>
				<Item Name="FPGA_MapDIOChannelEnumToModuleLine.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_MapDIOChannelEnumToModuleLine.vi"/>
				<Item Name="FPGA_NIFPGAInterfaceFPGAResourceConstant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/FPGA_NIFPGAInterfaceFPGAResourceConstant.vi"/>
				<Item Name="FPGA_ReadAI.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_ReadAI.vi"/>
				<Item Name="FPGA_SPI_Write_EnableDIO.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/SPI/FPGA_SPI_Write_EnableDIO.vi"/>
				<Item Name="FPGA_SystemAsync VI Agent.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemAsync VI Agent.vi"/>
				<Item Name="FPGA_SystemAsynch VI Registration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemAsynch VI Registration.vi"/>
				<Item Name="FPGA_SystemERRWrongVersion.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemERRWrongVersion.vi"/>
				<Item Name="FPGA_SystemFPGA Ref Global.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemFPGA Ref Global.vi"/>
				<Item Name="FPGA_SystemFRC FPGA Ref.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemFRC FPGA Ref.ctl"/>
				<Item Name="FPGA_SystemGet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemGet.vi"/>
				<Item Name="FPGA_SystemOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemOpen.vi"/>
				<Item Name="FPGA_SystemStart Async Agent.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemStart Async Agent.vi"/>
				<Item Name="Get Image w retry.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/Get Image w retry.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="i2c_bus.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/i2clib/i2c_bus.ctl"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQdx.ctl" Type="VI" URL="/&lt;vilib&gt;/userdefined/High Color/IMAQdx.ctl"/>
				<Item Name="LEB Encoder.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/LEB Encoder.vi"/>
				<Item Name="Make Table Operation.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Make Table Operation.ctl"/>
				<Item Name="Manage Connection List.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Manage Connection List.vi"/>
				<Item Name="Manage Dirty Field ID List.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Manage Dirty Field ID List.vi"/>
				<Item Name="NetComm_CAN_OpenStreamSession.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_CAN_OpenStreamSession.vi"/>
				<Item Name="NetComm_CAN_ReadStreamSession.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_CAN_ReadStreamSession.vi"/>
				<Item Name="NetComm_CAN_Receive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_CAN_Receive.vi"/>
				<Item Name="NetComm_CAN_Send.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_CAN_Send.vi"/>
				<Item Name="NetComm_ControlWord.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_ControlWord.ctl"/>
				<Item Name="NetComm_getControlWord.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getControlWord.vi"/>
				<Item Name="NetComm_getJoystickAxes.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getJoystickAxes.vi"/>
				<Item Name="NetComm_getJoystickButtons.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getJoystickButtons.vi"/>
				<Item Name="NetComm_getJoystickPOVs.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getJoystickPOVs.vi"/>
				<Item Name="NetComm_getWatchdogActive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getWatchdogActive.vi"/>
				<Item Name="NetComm_ObserveUserProgramStarting.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_ObserveUserProgramStarting.vi"/>
				<Item Name="NetComm_SendError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_SendError.vi"/>
				<Item Name="NetComm_SetNewDataOccurrenceReference.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_SetNewDataOccurrenceReference.vi"/>
				<Item Name="NetComm_UnloadCPPStartupProgram.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_UnloadCPPStartupProgram.vi"/>
				<Item Name="NetComm_UsageReport_report.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_UsageReport_report.vi"/>
				<Item Name="NetComm_UsageReport_ResourceType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_UsageReport_ResourceType.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Vision_Acquisition_Software.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/driver/NI_Vision_Acquisition_Software.lvlib"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="NT Globals.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Globals.vi"/>
				<Item Name="NT Read Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Boolean Array.vi"/>
				<Item Name="NT Read Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Boolean.vi"/>
				<Item Name="NT Read Name Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Name Cache.vi"/>
				<Item Name="NT Read Number.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Number.vi"/>
				<Item Name="NT Read Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Numeric Array.vi"/>
				<Item Name="NT Read Raw.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Raw.vi"/>
				<Item Name="NT Read String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read String Array.vi"/>
				<Item Name="NT Read String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read String.vi"/>
				<Item Name="NT Read Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Value.vi"/>
				<Item Name="NT Read Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Read Variant.vi"/>
				<Item Name="NT Server Prototype.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Server Prototype.vi"/>
				<Item Name="NT Server.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Server.vi"/>
				<Item Name="NT Write Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Boolean Array.vi"/>
				<Item Name="NT Write Boolean.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Boolean.vi"/>
				<Item Name="NT Write Name Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Name Cache.vi"/>
				<Item Name="NT Write Number.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Number.vi"/>
				<Item Name="NT Write Numeric Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Numeric Array.vi"/>
				<Item Name="NT Write Raw.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Raw.vi"/>
				<Item Name="NT Write String Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write String Array.vi"/>
				<Item Name="NT Write String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write String.vi"/>
				<Item Name="NT Write Value.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Value.vi"/>
				<Item Name="NT Write Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/NT Write Variant.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Prepare Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Prepare Pattern.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Refnum Registry Operation.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/Refnum Registry Operation.ctl"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="Report Read Error.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Report Read Error.vi"/>
				<Item Name="roboRIO_FPGA_2020_20.1.2.lvbitx" Type="Document" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/roboRIO_FPGA_2020_20.1.2.lvbitx"/>
				<Item Name="Safe Image Get Image.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/Safe Image Get Image.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Sequence.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Sequence.ctl"/>
				<Item Name="Spark MAX Broadcast Sync.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Broadcast Sync.vi"/>
				<Item Name="Spark MAX CAN API Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX CAN API Mask.ctl"/>
				<Item Name="Spark MAX Check Firmare Version.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Check Firmare Version.vi"/>
				<Item Name="Spark MAX Clear Faults.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Clear Faults.vi"/>
				<Item Name="Spark MAX Daemon.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Daemon/Spark MAX Daemon.vi"/>
				<Item Name="Spark MAX Disable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Disable.vi"/>
				<Item Name="Spark MAX Enable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Enable.vi"/>
				<Item Name="Spark MAX Faults.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Faults.ctl"/>
				<Item Name="Spark MAX Get Applied Output.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Get Applied Output.vi"/>
				<Item Name="Spark MAX Get Cached Parameter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Get Cached Parameter.vi"/>
				<Item Name="Spark MAX Get Firmware Version.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Get Firmware Version.vi"/>
				<Item Name="Spark MAX Get Output.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Get Output.vi"/>
				<Item Name="Spark MAX Get Parameter Raw.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Get Parameter Raw.vi"/>
				<Item Name="Spark MAX Get Sensor Position.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Get Sensor Position.vi"/>
				<Item Name="Spark MAX Get Status 0.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Get Status 0.vi"/>
				<Item Name="Spark MAX Get Status 2.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Get Status 2.vi"/>
				<Item Name="Spark MAX Idle Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Idle Mode.ctl"/>
				<Item Name="Spark MAX Open.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Open.vi"/>
				<Item Name="Spark MAX Parameter Cache Element.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Parameter Cache Element.ctl"/>
				<Item Name="Spark MAX Parameter ID.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Parameter ID.ctl"/>
				<Item Name="Spark MAX Parameter Status.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Parameter Status.ctl"/>
				<Item Name="Spark MAX Parameter Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Parameter Type.ctl"/>
				<Item Name="Spark MAX Process Parameter Stream.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Process Parameter Stream.vi"/>
				<Item Name="Spark MAX Register Device With Daemon.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Daemon/Spark MAX Register Device With Daemon.vi"/>
				<Item Name="Spark MAX Registered Devices.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Daemon/Spark MAX Registered Devices.vi"/>
				<Item Name="Spark MAX Sensor Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Sensor Type.ctl"/>
				<Item Name="Spark MAX Set Idle Mode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set Idle Mode.vi"/>
				<Item Name="Spark MAX Set Output Basic.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Output Basic.vi"/>
				<Item Name="Spark MAX Set Parameter Bool.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter Bool.vi"/>
				<Item Name="Spark MAX Set Parameter Byte Array.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter Byte Array.vi"/>
				<Item Name="Spark MAX Set Parameter dbl.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter dbl.vi"/>
				<Item Name="Spark MAX Set Parameter float.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter float.vi"/>
				<Item Name="Spark MAX Set Parameter signed int.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter signed int.vi"/>
				<Item Name="Spark MAX Set Parameter unsigned int.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter unsigned int.vi"/>
				<Item Name="Spark MAX Set Parameter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Set Parameter.vi"/>
				<Item Name="Spark MAX Set Ramp Rate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set Ramp Rate.vi"/>
				<Item Name="Spark MAX Set Sensor Position.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set Sensor Position.vi"/>
				<Item Name="Spark MAX Start Daemon.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Daemon/Spark MAX Start Daemon.vi"/>
				<Item Name="Spark MAX Status 0 Flags.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Status 0 Flags.ctl"/>
				<Item Name="Spark MAX Status 0 Frame.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Status 0 Frame.ctl"/>
				<Item Name="Spark MAX Status 2 Frame.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Status 2 Frame.ctl"/>
				<Item Name="Spark MAX Unpack Faults.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Unpack Faults.vi"/>
				<Item Name="Spark MAX Variant Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Variant Data.ctl"/>
				<Item Name="Spark MAX Write Parameter Cache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Write Parameter Cache.vi"/>
				<Item Name="spi_bus.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/spilib/spi_bus.ctl"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="String Matches Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/String Matches Pattern.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Table Manager.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Table Manager.vi"/>
				<Item Name="Tokenize Path.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Tokenize Path.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Update Other Clients.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Update Other Clients.vi"/>
				<Item Name="Usage Statistics.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Usage Statistics.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="WPI_AnalogChannelChannelCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelChannelCache.vi"/>
				<Item Name="WPI_AnalogChannelChannelCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelChannelCacheOp.ctl"/>
				<Item Name="WPI_AnalogChannelClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelClose.vi"/>
				<Item Name="WPI_AnalogChannelDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelDevRef.ctl"/>
				<Item Name="WPI_AnalogChannelERRAcquireInvalidChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelERRAcquireInvalidChannel.vi"/>
				<Item Name="WPI_AnalogChannelERRChannelAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelERRChannelAllocated.vi"/>
				<Item Name="WPI_AnalogChannelERRScanlistInvalid.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelERRScanlistInvalid.vi"/>
				<Item Name="WPI_AnalogChannelGetAverageVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelGetAverageVoltage.vi"/>
				<Item Name="WPI_AnalogChannelOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelOpen.vi"/>
				<Item Name="WPI_AnalogChannelSetAveraging.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelSetAveraging.vi"/>
				<Item Name="WPI_AnalogChannelSetSampleRate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelSetSampleRate.vi"/>
				<Item Name="WPI_AnalogChannelToAnalogModule.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelToAnalogModule.vi"/>
				<Item Name="WPI_AnalogChannelWARNSampleRateTooFast.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelWARNSampleRateTooFast.vi"/>
				<Item Name="WPI_AnalogModuleDefaults.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleDefaults.vi"/>
				<Item Name="WPI_AnalogModuleDevStatus.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleDevStatus.ctl"/>
				<Item Name="WPI_AnalogModuleGetAverageVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleGetAverageVoltage.vi"/>
				<Item Name="WPI_AnalogModuleOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleOpen.vi"/>
				<Item Name="WPI_AnalogOutputChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogOutput/WPI_AnalogOutputChannel.ctl"/>
				<Item Name="WPI_Camera Registry.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_Camera Registry.vi"/>
				<Item Name="WPI_CameraAttributeIsAuto.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraAttributeIsAuto.vi"/>
				<Item Name="WPI_CameraBackground Loop.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraBackground Loop.vi"/>
				<Item Name="WPI_CameraBasisString.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraBasisString.vi"/>
				<Item Name="WPI_CameraClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraClose.vi"/>
				<Item Name="WPI_CameraCompressionMode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraCompressionMode.vi"/>
				<Item Name="WPI_CameraCountSameBufferNumber.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraCountSameBufferNumber.vi"/>
				<Item Name="WPI_CameraDecodeJPEGString.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraDecodeJPEGString.vi"/>
				<Item Name="WPI_CameraDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraDevRef.ctl"/>
				<Item Name="WPI_CameraEnumCameras.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraEnumCameras.vi"/>
				<Item Name="WPI_CameraERRFailedComm.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraERRFailedComm.vi"/>
				<Item Name="WPI_CameraExposure Priority Values.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraExposure Priority Values.ctl"/>
				<Item Name="WPI_CameraExposure Values.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraExposure Values.ctl"/>
				<Item Name="WPI_CameraFrameRate.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraFrameRate.ctl"/>
				<Item Name="WPI_CameraGet Acquire Image Notifier Internal.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Acquire Image Notifier Internal.vi"/>
				<Item Name="WPI_CameraGet Brightness.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Brightness.vi"/>
				<Item Name="WPI_CameraGet Color Enable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Color Enable.vi"/>
				<Item Name="WPI_CameraGet Color Level.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Color Level.vi"/>
				<Item Name="WPI_CameraGet Enum Appearance Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Enum Appearance Property.vi"/>
				<Item Name="WPI_CameraGet Enum Sensor Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Enum Sensor Property.vi"/>
				<Item Name="WPI_CameraGet Exposure Priority.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Exposure Priority.vi"/>
				<Item Name="WPI_CameraGet Exposure.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Exposure.vi"/>
				<Item Name="WPI_CameraGet Frame Rate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Frame Rate.vi"/>
				<Item Name="WPI_CameraGet Image Appearance Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Image Appearance Property.vi"/>
				<Item Name="WPI_CameraGet Image Compression.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Image Compression.vi"/>
				<Item Name="WPI_CameraGet Image Notifier Internal.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Image Notifier Internal.vi"/>
				<Item Name="WPI_CameraGet Image Size.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Image Size.vi"/>
				<Item Name="WPI_CameraGet Image.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Image.vi"/>
				<Item Name="WPI_CameraGet Numeric Appearance Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Numeric Appearance Property.vi"/>
				<Item Name="WPI_CameraGet Numeric Sensor Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Numeric Sensor Property.vi"/>
				<Item Name="WPI_CameraGet Sharpness.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet Sharpness.vi"/>
				<Item Name="WPI_CameraGet White Balance.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraGet White Balance.vi"/>
				<Item Name="WPI_CameraGetScaledAttr.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraGetScaledAttr.vi"/>
				<Item Name="WPI_CameraImageSize.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraImageSize.ctl"/>
				<Item Name="WPI_CameraIsCameraRefUSBAddress.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraIsCameraRefUSBAddress.vi"/>
				<Item Name="WPI_CameraIsSimulated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraIsSimulated.vi"/>
				<Item Name="WPI_CameraIssue Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraIssue Get.vi"/>
				<Item Name="WPI_CameraIssue HTTP Request with Authentication.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraIssue HTTP Request with Authentication.vi"/>
				<Item Name="WPI_CameraIsUSBAddress.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraIsUSBAddress.vi"/>
				<Item Name="WPI_CameraManage Camera Settings.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraManage Camera Settings.vi"/>
				<Item Name="WPI_CameraMyConfigure.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraMyConfigure.vi"/>
				<Item Name="WPI_CameraOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraOpen.vi"/>
				<Item Name="WPI_CameraRead MJPGString.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraRead MJPGString.vi"/>
				<Item Name="WPI_CameraRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraRefNum Registry Set.vi"/>
				<Item Name="WPI_CameraRegistryActions.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraRegistryActions.ctl"/>
				<Item Name="WPI_CameraSet Brightness.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Brightness.vi"/>
				<Item Name="WPI_CameraSet Enum Sensor Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Enum Sensor Property.vi"/>
				<Item Name="WPI_CameraSet Exposure.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Exposure.vi"/>
				<Item Name="WPI_CameraSet Frame Rate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Frame Rate.vi"/>
				<Item Name="WPI_CameraSet Image Appearance Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Image Appearance Property.vi"/>
				<Item Name="WPI_CameraSet Image Compression.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Image Compression.vi"/>
				<Item Name="WPI_CameraSet Image Size.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Image Size.vi"/>
				<Item Name="WPI_CameraSet Numeric Appearance Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Numeric Appearance Property.vi"/>
				<Item Name="WPI_CameraSet Numeric Sensor Property.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet Numeric Sensor Property.vi"/>
				<Item Name="WPI_CameraSet White Balance.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSet White Balance.vi"/>
				<Item Name="WPI_CameraSetModeAttr.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraSetModeAttr.vi"/>
				<Item Name="WPI_CameraSetScaledAttr.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraSetScaledAttr.vi"/>
				<Item Name="WPI_CameraSettings Control.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSettings Control.ctl"/>
				<Item Name="WPI_CameraSettings Operations.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraSettings Operations.ctl"/>
				<Item Name="WPI_CameraStart.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraStart.vi"/>
				<Item Name="WPI_CameraStartStopCount.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraStartStopCount.vi"/>
				<Item Name="WPI_CameraStop.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraStop.vi"/>
				<Item Name="WPI_CameraTranslate Percent Codes.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraTranslate Percent Codes.vi"/>
				<Item Name="WPI_CameraUpdate Camera Status.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraUpdate Camera Status.vi"/>
				<Item Name="WPI_CameraWait for Raw Image String.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraWait for Raw Image String.vi"/>
				<Item Name="WPI_CameraWhite Balance Values.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/WPI_CameraWhite Balance Values.ctl"/>
				<Item Name="WPI_CameraWhiteBalanceConstants.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Camera/USB Support/WPI_CameraWhiteBalanceConstants.vi"/>
				<Item Name="WPI_CAN_PCMGlobal.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PCM/WPI_CAN_PCMGlobal.vi"/>
				<Item Name="WPI_CAN_PCMGlobalOps.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PCM/WPI_CAN_PCMGlobalOps.ctl"/>
				<Item Name="WPI_CAN_PCMMessageIDs.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PCM/WPI_CAN_PCMMessageIDs.ctl"/>
				<Item Name="WPI_CAN_PCMSend.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PCM/WPI_CAN_PCMSend.vi"/>
				<Item Name="WPI_CAN_Receive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/WPI_CAN_Receive.vi"/>
				<Item Name="WPI_CAN_Send.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/WPI_CAN_Send.vi"/>
				<Item Name="WPI_CompressorDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Compressor/WPI_CompressorDevRef.ctl"/>
				<Item Name="WPI_CompressorOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Compressor/WPI_CompressorOpen.vi"/>
				<Item Name="WPI_CompressorRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Compressor/WPI_CompressorRefNum Registry Set.vi"/>
				<Item Name="WPI_CompressorStart.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Compressor/WPI_CompressorStart.vi"/>
				<Item Name="WPI_DefaultPWMConstants.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_DefaultPWMConstants.vi"/>
				<Item Name="WPI_DigitalModuleDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDeviceRef.ctl"/>
				<Item Name="WPI_DigitalModuleDIOAllocator.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDIOAllocator.vi"/>
				<Item Name="WPI_DigitalModuleDIOCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDIOCache.vi"/>
				<Item Name="WPI_DigitalModuleDIOCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDIOCacheOp.ctl"/>
				<Item Name="WPI_DigitalModuleERRDIOAlreadyAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleERRDIOAlreadyAllocated.vi"/>
				<Item Name="WPI_DigitalModuleERRInvalidDIOIdx.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleERRInvalidDIOIdx.vi"/>
				<Item Name="WPI_DigitalModuleERRSetOnUnallocatedDIO.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleERRSetOnUnallocatedDIO.vi"/>
				<Item Name="WPI_DigitalModuleGetPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleGetPWM.vi"/>
				<Item Name="WPI_DigitalModuleOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleOpen.vi"/>
				<Item Name="WPI_DigitalModuleSetPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleSetPWM.vi"/>
				<Item Name="WPI_DigitalModuleSetPWMPeriodScale.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleSetPWMPeriodScale.vi"/>
				<Item Name="WPI_DigitalModuleValidateDIOChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleValidateDIOChannel.vi"/>
				<Item Name="WPI_DigitalOutputClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputClose.vi"/>
				<Item Name="WPI_DigitalOutputConfigurePWMRate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputConfigurePWMRate.vi"/>
				<Item Name="WPI_DigitalOutputDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputDevRef.ctl"/>
				<Item Name="WPI_DigitalOutputDisablePWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputDisablePWM.vi"/>
				<Item Name="WPI_DigitalOutputGeneratePWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputGeneratePWM.vi"/>
				<Item Name="WPI_DigitalOutputGetPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputGetPWM.vi"/>
				<Item Name="WPI_DigitalOutputOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputOpen.vi"/>
				<Item Name="WPI_DigitalOutputPWMAllocator.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputPWMAllocator.vi"/>
				<Item Name="WPI_DigitalOutputPWMRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputPWMRef.ctl"/>
				<Item Name="WPI_DriverStationCreate Lib Version File.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationCreate Lib Version File.vi"/>
				<Item Name="WPI_DriverStationDerivedRobotMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationDerivedRobotMode.ctl"/>
				<Item Name="WPI_DriverStationGet Robot Mode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationGet Robot Mode.vi"/>
				<Item Name="WPI_DriverStationGetModeAndStatusInternal.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationGetModeAndStatusInternal.vi"/>
				<Item Name="WPI_DriverStationMatch Info.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationMatch Info.ctl"/>
				<Item Name="WPI_DriverStationReport Robot Code State.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationReport Robot Code State.vi"/>
				<Item Name="WPI_DriverStationRobotMode2.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationRobotMode2.ctl"/>
				<Item Name="WPI_DriverStationStart Communication.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStart Communication.vi"/>
				<Item Name="WPI_DriverStationStart VI Asynchronous.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStart VI Asynchronous.vi"/>
				<Item Name="WPI_DriverStationStartStopVI.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStartStopVI.vi"/>
				<Item Name="WPI_DriverStationStop VI Asynchronous.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStop VI Asynchronous.vi"/>
				<Item Name="WPI_ERRAcquireInvalidPWMChannelIdx.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_ERRAcquireInvalidPWMChannelIdx.vi"/>
				<Item Name="WPI_ERRPwmChannelAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_ERRPwmChannelAllocated.vi"/>
				<Item Name="WPI_GetSetVariantRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_GetSetVariantRefNum.vi"/>
				<Item Name="WPI_JoystickDeviceEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickDeviceEnum.ctl"/>
				<Item Name="WPI_JoystickDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickDevRef.ctl"/>
				<Item Name="WPI_JoystickGetValues.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickGetValues.vi"/>
				<Item Name="WPI_JoystickOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickOpen.vi"/>
				<Item Name="WPI_JoystickRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickRefNum Registry Get.vi"/>
				<Item Name="WPI_JoystickRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickRefNum Registry Set.vi"/>
				<Item Name="WPI_MotorControlClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlClose.vi"/>
				<Item Name="WPI_MotorControlDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDeviceRef.ctl"/>
				<Item Name="WPI_MotorControlDisable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDisable.vi"/>
				<Item Name="WPI_MotorControlDisableRefType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDisableRefType.ctl"/>
				<Item Name="WPI_MotorControlDoesDevRefExist.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDoesDevRefExist.vi"/>
				<Item Name="WPI_MotorControlEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlEnable.vi"/>
				<Item Name="WPI_MotorControlEnableRefType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlEnableRefType.ctl"/>
				<Item Name="WPI_MotorControlGetOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlGetOutput.vi"/>
				<Item Name="WPI_MotorControlGetOutputRefType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlGetOutputRefType.ctl"/>
				<Item Name="WPI_MotorControlOpen FusionVenom.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen FusionVenom.vi"/>
				<Item Name="WPI_MotorControlOpen Jaguar.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen Jaguar.vi"/>
				<Item Name="WPI_MotorControlOpen NidecBrushless.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen NidecBrushless.vi"/>
				<Item Name="WPI_MotorControlOpen SD540.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen SD540.vi"/>
				<Item Name="WPI_MotorControlOpen SPARK.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen SPARK.vi"/>
				<Item Name="WPI_MotorControlOpen SPARK_MAX.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen SPARK_MAX.vi"/>
				<Item Name="WPI_MotorControlOpen Talon.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen Talon.vi"/>
				<Item Name="WPI_MotorControlOpen TalonFX.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen TalonFX.vi"/>
				<Item Name="WPI_MotorControlOpen TalonSRX.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen TalonSRX.vi"/>
				<Item Name="WPI_MotorControlOpen Victor.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen Victor.vi"/>
				<Item Name="WPI_MotorControlOpen VictorSP.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen VictorSP.vi"/>
				<Item Name="WPI_MotorControlOpen VictorSPX.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen VictorSPX.vi"/>
				<Item Name="WPI_MotorControlOpen&amp;ConfigurePWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen&amp;ConfigurePWM.vi"/>
				<Item Name="WPI_MotorControlOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen.vi"/>
				<Item Name="WPI_MotorControlRefNum Compare.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlRefNum Compare.vi"/>
				<Item Name="WPI_MotorControlRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlRefNum Registry Get.vi"/>
				<Item Name="WPI_MotorControlRefNum Registry Read Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlRefNum Registry Read Name.vi"/>
				<Item Name="WPI_MotorControlRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlRefNum Registry Set.vi"/>
				<Item Name="WPI_MotorControlSafetyCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSafetyCheck.vi"/>
				<Item Name="WPI_MotorControlSafetyError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSafetyError.vi"/>
				<Item Name="WPI_MotorControlSafetyUpdate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSafetyUpdate.vi"/>
				<Item Name="WPI_MotorControlScaleFromPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlScaleFromPWM.vi"/>
				<Item Name="WPI_MotorControlScaleToPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlScaleToPWM.vi"/>
				<Item Name="WPI_MotorControlSetOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSetOutput.vi"/>
				<Item Name="WPI_MotorControlSetOutputRefType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSetOutputRefType.ctl"/>
				<Item Name="WPI_MotorControlToPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlToPWM.vi"/>
				<Item Name="WPI_MotorControlTrackCANSemaphores.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlTrackCANSemaphores.vi"/>
				<Item Name="WPI_MotorControlType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlType.ctl"/>
				<Item Name="WPI_MXP DIO Channel to MXP Pin.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP DIO Channel to MXP Pin.vi"/>
				<Item Name="WPI_MXP General IO to MXP Pin.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP General IO to MXP Pin.vi"/>
				<Item Name="WPI_MXP I2C Bus to first MXP Pin.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP I2C Bus to first MXP Pin.vi"/>
				<Item Name="WPI_MXP PWM Channel to MXP Pin.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP PWM Channel to MXP Pin.vi"/>
				<Item Name="WPI_MXP Shared MXP Pin.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP Shared MXP Pin.ctl"/>
				<Item Name="WPI_MXP SPI Bus to first MXP Pin.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP SPI Bus to first MXP Pin.vi"/>
				<Item Name="WPI_MXP_ChannelCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP_ChannelCache.vi"/>
				<Item Name="WPI_MXP_Grab Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MXP/WPI_MXP_Grab Mutex.vi"/>
				<Item Name="WPI_PotentiometerClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Potentiometer/WPI_PotentiometerClose.vi"/>
				<Item Name="WPI_PotentiometerDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Potentiometer/WPI_PotentiometerDevRef.ctl"/>
				<Item Name="WPI_PotentiometerGetNormalized.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Potentiometer/WPI_PotentiometerGetNormalized.vi"/>
				<Item Name="WPI_PotentiometerOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Potentiometer/WPI_PotentiometerOpen.vi"/>
				<Item Name="WPI_PotentiometerRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Potentiometer/WPI_PotentiometerRefNum Registry Get.vi"/>
				<Item Name="WPI_PotentiometerRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Potentiometer/WPI_PotentiometerRefNum Registry Set.vi"/>
				<Item Name="WPI_Power Get 3Volt Rail Voltage and Current.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get 3Volt Rail Voltage and Current.vi"/>
				<Item Name="WPI_Power Get 5Volt Rail Voltage and Current.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get 5Volt Rail Voltage and Current.vi"/>
				<Item Name="WPI_Power Get 6Volt Rail Voltage and Current.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get 6Volt Rail Voltage and Current.vi"/>
				<Item Name="WPI_Power Get Rail Voltage and Current.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get Rail Voltage and Current.vi"/>
				<Item Name="WPI_PWMChannelCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMChannelCache.vi"/>
				<Item Name="WPI_PWMChannelCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMChannelCacheOp.ctl"/>
				<Item Name="WPI_PWMClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMClose.vi"/>
				<Item Name="WPI_PWMConvertDeadbandMillisecondTimeTo8Bit.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMConvertDeadbandMillisecondTimeTo8Bit.vi"/>
				<Item Name="WPI_PWMDeadband.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDeadband.ctl"/>
				<Item Name="WPI_PWMDeadband_ms.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDeadband_ms.ctl"/>
				<Item Name="WPI_PWMDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDeviceRef.ctl"/>
				<Item Name="WPI_PWMDoesDevRefExist.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDoesDevRefExist.vi"/>
				<Item Name="WPI_PWMERRSetOnUnallocatedChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMERRSetOnUnallocatedChannel.vi"/>
				<Item Name="WPI_PWMGetRangeScaleFactors.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMGetRangeScaleFactors.vi"/>
				<Item Name="WPI_PWMGetValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMGetValue.vi"/>
				<Item Name="WPI_PWMOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMOpen.vi"/>
				<Item Name="WPI_PWMPeriodMultiplier.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMPeriodMultiplier.ctl"/>
				<Item Name="WPI_PWMRefNum Registry Read Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMRefNum Registry Read Name.vi"/>
				<Item Name="WPI_PWMSafetyCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSafetyCheck.vi"/>
				<Item Name="WPI_PWMSafetyError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSafetyError.vi"/>
				<Item Name="WPI_PWMSafetyUpdate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSafetyUpdate.vi"/>
				<Item Name="WPI_PWMSetPeriodMultiplier.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSetPeriodMultiplier.vi"/>
				<Item Name="WPI_PWMSetValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSetValue.vi"/>
				<Item Name="WPI_PWMToDigitalModule.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMToDigitalModule.vi"/>
				<Item Name="WPI_SafetyOutputCheckMenu.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputCheckMenu.ctl"/>
				<Item Name="WPI_SafetyOutputEngine.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputEngine.vi"/>
				<Item Name="WPI_SafetyOutputVIRefnumList.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputVIRefnumList.vi"/>
				<Item Name="WPI_UtilitiesERRGetRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesERRGetRefNum.vi"/>
				<Item Name="WPI_UtilitiesFRC Build Error.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesFRC Build Error.vi"/>
				<Item Name="WPI_UtilitiesFRCAutomaticValuePublisher.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesFRCAutomaticValuePublisher.vi"/>
				<Item Name="WPI_UtilitiesTimebaseConstants.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesTimebaseConstants.vi"/>
				<Item Name="Write Value Core.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/Network Tables/Write Value Core.vi"/>
				<Item Name="Spark MAX Set Smart Current Limit.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set Smart Current Limit.vi"/>
				<Item Name="NetComm_getMatchTime.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getMatchTime.vi"/>
				<Item Name="WPI_DriverStationGetRemainingMatchTime.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationGetRemainingMatchTime.vi"/>
				<Item Name="WPI_CAN_PDPCommands.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPCommands.ctl"/>
				<Item Name="WPI_CAN_PDPGetAll.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPGetAll.ctl"/>
				<Item Name="WPI_CAN_PDPGlobalOps.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPGlobalOps.ctl"/>
				<Item Name="WPI_CAN_PDPGlobal.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPGlobal.vi"/>
				<Item Name="WPI_CAN_PDPMessageIDs.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPMessageIDs.ctl"/>
				<Item Name="WPI_CAN_PDPDecode4Currents.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPDecode4Currents.vi"/>
				<Item Name="WPI_CAN_PDPReceive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPReceive.vi"/>
				<Item Name="WPI_Power Get PDP Voltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get PDP Voltage.vi"/>
				<Item Name="FPGA_CounterCtrSystemIndex.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterCtrSystemIndex.ctl"/>
				<Item Name="FPGA_CounterCtrDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterCtrDevRef.ctl"/>
				<Item Name="FPGA_CounterWriteReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteReset.vi"/>
				<Item Name="FPGA_CounterWriteTimerConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteTimerConfiguration.vi"/>
				<Item Name="FPGA_ERRInvalidAnalogTriggerChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_ERRInvalidAnalogTriggerChannel.vi"/>
				<Item Name="FPGA_AnalogTriggerOutType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerOutType.ctl"/>
				<Item Name="FPGA_AnalogTriggerIndex.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerIndex.ctl"/>
				<Item Name="FPGA_DIODigitalSourceChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIODigitalSourceChannel.ctl"/>
				<Item Name="FPGA_CounterEncoderSourceConvertionLVSourceType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/CounterEncoderSourceConvertion/FPGA_CounterEncoderSourceConvertionLVSourceType.ctl"/>
				<Item Name="FPGA_CounterEncoderSourceConvertionLVSourceTypeToFPGAType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/CounterEncoderSourceConvertion/FPGA_CounterEncoderSourceConvertionLVSourceTypeToFPGAType.vi"/>
				<Item Name="FPGA_CounterEventCtrMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterEventCtrMode.ctl"/>
				<Item Name="FPGA_CounterCtrEdgeDetectionType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterCtrEdgeDetectionType.ctl"/>
				<Item Name="FPGA_CounterConvertEdgeTypeToMode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterConvertEdgeTypeToMode.vi"/>
				<Item Name="FPGA_CounterWriteConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteConfiguration.vi"/>
				<Item Name="FPGA_CounterOpen &amp; Configured.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterOpen &amp; Configured.vi"/>
				<Item Name="WPI_ERRNoFreeCounter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_ERRNoFreeCounter.vi"/>
				<Item Name="WPI_CounterCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterCacheOp.ctl"/>
				<Item Name="WPI_CounterCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterCache.vi"/>
				<Item Name="WPI_CounterWARNDigitalSourceAndEdgeType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterWARNDigitalSourceAndEdgeType.vi"/>
				<Item Name="WPI_CounterVerifyDigitalSourceOkWithEdgeType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterVerifyDigitalSourceOkWithEdgeType.vi"/>
				<Item Name="WPI_CounterEdgeLevel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterEdgeLevel.ctl"/>
				<Item Name="WPI_CounterDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterDevRef.ctl"/>
				<Item Name="WPI_CounterOpen &amp; Configure.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen &amp; Configure.vi"/>
				<Item Name="WPI_CounterOpen UpDown Mode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen UpDown Mode.vi"/>
				<Item Name="WPI_CounterOpen External Direction Mode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen External Direction Mode.vi"/>
				<Item Name="WPI_CounterOpen Semi Period Mode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen Semi Period Mode.vi"/>
				<Item Name="WPI_CounterOpen Gear Tooth Sensor Mode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen Gear Tooth Sensor Mode.vi"/>
				<Item Name="WPI_CounterOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen.vi"/>
				<Item Name="WPI_DigitalInputDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputDevRef.ctl"/>
				<Item Name="WPI_CounterDigitalInputToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterDigitalInputToDigitalSource.vi"/>
				<Item Name="WPI_CounterDigitalOutputToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterDigitalOutputToDigitalSource.vi"/>
				<Item Name="FPGA_AnalogTriggerDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerDevRef.ctl"/>
				<Item Name="WPI_CounterAnalogTriggerToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterAnalogTriggerToDigitalSource.vi"/>
				<Item Name="WPI_CounterToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterToDigitalSource.vi"/>
				<Item Name="FPGA_DIOWriteFilterPeriod.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteFilterPeriod.vi"/>
				<Item Name="FPGA_DIOWriteFilterSelect.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteFilterSelect.vi"/>
				<Item Name="WPI_ERRFilterReserved.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_ERRFilterReserved.vi"/>
				<Item Name="WPI_ReserveFilterResource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_ReserveFilterResource.vi"/>
				<Item Name="WPI_SetFilterFrequency.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_SetFilterFrequency.vi"/>
				<Item Name="WPI_DigitalInputOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputOpen.vi"/>
				<Item Name="WPI_SwitchDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchDevRef.ctl"/>
				<Item Name="WPI_SwitchOpenCounting.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchOpenCounting.vi"/>
				<Item Name="WPI_SwitchOpenLimit.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchOpenLimit.vi"/>
				<Item Name="WPI_SwitchOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchOpen.vi"/>
				<Item Name="WPI_SwitchRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchRefNum Registry Set.vi"/>
				<Item Name="WPI_SwitchRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchRefNum Registry Get.vi"/>
				<Item Name="FPGA_DIOReadDI.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadDI.vi"/>
				<Item Name="WPI_DigitalModuleGetDIO.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleGetDIO.vi"/>
				<Item Name="WPI_DigitalInputToDigitalModule.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputToDigitalModule.vi"/>
				<Item Name="WPI_DigitalInputGetValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputGetValue.vi"/>
				<Item Name="WPI_SwitchGetLimitValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchGetLimitValue.vi"/>
				<Item Name="WPI_DisableFilter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_DisableFilter.vi"/>
				<Item Name="WPI_DigitalInputClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputClose.vi"/>
				<Item Name="WPI_AnalogTriggerErrList.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogTrigger/WPI_AnalogTriggerErrList.vi"/>
				<Item Name="WPI_AnalogTriggerCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogTrigger/WPI_AnalogTriggerCache.vi"/>
				<Item Name="FPGA_AnalogTriggerSource.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerSource.ctl"/>
				<Item Name="FPGA_AnalogTriggerConvertFPGAToSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerConvertFPGAToSource.vi"/>
				<Item Name="FPGA_AnalogTriggerReadConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerReadConfiguration.vi"/>
				<Item Name="WPI_AnalogTriggerClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogTrigger/WPI_AnalogTriggerClose.vi"/>
				<Item Name="WPI_CounterCloseDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterCloseDigitalSource.vi"/>
				<Item Name="FPGA_CounterEncoderSourceConvertionFPGATypeToLVSourceType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/CounterEncoderSourceConvertion/FPGA_CounterEncoderSourceConvertionFPGATypeToLVSourceType.vi"/>
				<Item Name="FPGA_CounterConvertModeToEdgeType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterConvertModeToEdgeType.vi"/>
				<Item Name="FPGA_CounterReadConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterReadConfiguration.vi"/>
				<Item Name="WPI_CounterClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterClose.vi"/>
				<Item Name="WPI_SwitchClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Switch/WPI_SwitchClose.vi"/>
				<Item Name="WPI_UtilitiesFRC SendMessageToConsole.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesFRC SendMessageToConsole.vi"/>
				<Item Name="NetComm_SendMessage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_SendMessage.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Write to XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(array).vi"/>
				<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(string).vi"/>
				<Item Name="Write to XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File.vi"/>
				<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
				<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
				<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
				<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
				<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
				<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
				<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
				<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
				<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
				<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
				<Item Name="Spark MAX Burn Flash.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Burn Flash.vi"/>
				<Item Name="WPI_AnalogChannelRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelRefNum Registry Set.vi"/>
				<Item Name="WPI_AnalogChannelRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelRefNum Registry Get.vi"/>
				<Item Name="WPI_AnalogChannelGetVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelGetVoltage.vi"/>
				<Item Name="WPI_AnalogModuleGetVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleGetVoltage.vi"/>
				<Item Name="FPGA_AIReadOffset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadOffset.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="WPI_CAN_PCMReceive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PCM/WPI_CAN_PCMReceive.vi"/>
				<Item Name="WPI_CompressorGetEnableState.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Compressor/WPI_CompressorGetEnableState.vi"/>
				<Item Name="WPI_CompressorRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Compressor/WPI_CompressorRefNum Registry Get.vi"/>
				<Item Name="CTRE_PigeonIMU_PigeonState.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_PigeonState.ctl"/>
				<Item Name="CTRE_PigeonIMU_CalibrationMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_CalibrationMode.ctl"/>
				<Item Name="CTRE_PigeonIMU_GetTempStateUpTime.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetTempStateUpTime.vi"/>
				<Item Name="CTRE_PigeonIMU_GetStartupStatus.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetStartupStatus.vi"/>
				<Item Name="CTRE_PigeonIMU_GetRawMagnetometer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetRawMagnetometer.vi"/>
				<Item Name="CTRE_PigeonIMU_GetRawGyro.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetRawGyro.vi"/>
				<Item Name="CTRE_PigeonIMU_GetCompass.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetCompass.vi"/>
				<Item Name="CTRE_PigeonIMU_GetBiasedMagnetometer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetBiasedMagnetometer.vi"/>
				<Item Name="CTRE_PigeonIMU_GetBiasedAccelerometer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetBiasedAccelerometer.vi"/>
				<Item Name="CTRE_PigeonIMU_GetAccumGyro.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetAccumGyro.vi"/>
				<Item Name="CTRE_PigeonIMU_GetAccelerometerAngles.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetAccelerometerAngles.vi"/>
				<Item Name="CTRE_PigeonIMU_Get6DQuaternion.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_Get6DQuaternion.vi"/>
				<Item Name="CTRE_PigeonIMU_GetFusedHeading.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetFusedHeading.vi"/>
				<Item Name="CTRE_PigeonIMU_GetYPR.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetYPR.vi"/>
				<Item Name="CTRE_PigeonIMU_GetData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_GetData.vi"/>
				<Item Name="CTRE_PigeonIMU_Open_CAN.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_Open_CAN.vi"/>
				<Item Name="CTRE_PigeonIMU_Open_TalonSRX.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_Open_TalonSRX.vi"/>
				<Item Name="CTRE_PigeonIMU_Open.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_Open.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_GetDevRefData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/CTRE_Phoenix_MotorControl_GetDevRefData.vi"/>
				<Item Name="WPI_CTRE_MotorController_Callback_SetOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/WPI Callback VIs/WPI_CTRE_MotorController_Callback_SetOutput.vi"/>
				<Item Name="CTRE_Phoenix_MotorController_GetPercentOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/Get/CTRE_Phoenix_MotorController_GetPercentOutput.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_SetSelectedSensorPosition.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/Sensor/CTRE_Phoenix_MotorControl_SetSelectedSensorPosition.vi"/>
				<Item Name="WPI_CTRE_MotorController_Callback_Enable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/WPI Callback VIs/WPI_CTRE_MotorController_Callback_Enable.vi"/>
				<Item Name="WPI_CTRE_MotorController_Callback_Disable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/WPI Callback VIs/WPI_CTRE_MotorController_Callback_Disable.vi"/>
				<Item Name="CTRE_Phoenix_TalonSRX_Open.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Talon SRX/CTRE_Phoenix_TalonSRX_Open.vi"/>
				<Item Name="CTRE_PigeonIMU_RefNumRegistrySet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_RefNumRegistrySet.vi"/>
				<Item Name="CTRE_PigeonIMU_SetFusedHeading.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Pigeon IMU/CTRE_PigeonIMU_SetFusedHeading.vi"/>
				<Item Name="NetComm_MatchType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_MatchType.ctl"/>
				<Item Name="NetComm_getMatchInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getMatchInfo.vi"/>
				<Item Name="NetComm_AllianceStation.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_AllianceStation.ctl"/>
				<Item Name="NetComm_getAllianceStation.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_getAllianceStation.vi"/>
				<Item Name="WPI_DriverStationPositionInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationPositionInfo.ctl"/>
				<Item Name="WPI_DriverStationAllianceInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationAllianceInfo.ctl"/>
				<Item Name="WPI_DriverStationGet Alliance Info.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationGet Alliance Info.vi"/>
				<Item Name="WPI_Power Get PDP Currents.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get PDP Currents.vi"/>
				<Item Name="WPI_CAN_PDPSend.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/PDP/WPI_CAN_PDPSend.vi"/>
				<Item Name="WPI_Power Get PCM Compressor Current.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get PCM Compressor Current.vi"/>
				<Item Name="WPI_Power Get PCM Faults.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Power/WPI_Power Get PCM Faults.vi"/>
				<Item Name="WPI_SolenoidChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidChannel.ctl"/>
				<Item Name="Spark MAX Get Status 1.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX Get Status 1.vi"/>
				<Item Name="Spark MAX Status 1 Frame.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Status 1 Frame.ctl"/>
				<Item Name="Spark MAX Get Motor Temperature.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Get Motor Temperature.vi"/>
				<Item Name="WPI_ERRSolenoidAllocation.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_ERRSolenoidAllocation.vi"/>
				<Item Name="WPI_ERRAllocAnInvalidSolenoidIdx.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_ERRAllocAnInvalidSolenoidIdx.vi"/>
				<Item Name="WPI_SolenoidCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidCacheOp.ctl"/>
				<Item Name="WPI_SolenoidCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidCache.vi"/>
				<Item Name="WPI_SolenoidDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidDevRef.ctl"/>
				<Item Name="WPI_SolenoidOpenDouble.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidOpenDouble.vi"/>
				<Item Name="WPI_SolenoidOpenSingle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidOpenSingle.vi"/>
				<Item Name="WPI_SolenoidOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidOpen.vi"/>
				<Item Name="WPI_SolenoidRefNum Registry Set.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidRefNum Registry Set.vi"/>
				<Item Name="WPI_SolenoidRefNum Registry Get.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidRefNum Registry Get.vi"/>
				<Item Name="WPI_SolenoidClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidClose.vi"/>
				<Item Name="WPI_SolenoidRefNum Registry Read Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidRefNum Registry Read Name.vi"/>
				<Item Name="WPI_SolenoidSafetyError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidSafetyError.vi"/>
				<Item Name="WPI_SolenoidDoesDevRefExist.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidDoesDevRefExist.vi"/>
				<Item Name="WPI_SolenoidSafetyCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidSafetyCheck.vi"/>
				<Item Name="WPI_ERRSolenoidNotAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_ERRSolenoidNotAllocated.vi"/>
				<Item Name="WPI_SolenoidSafetyUpdate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidSafetyUpdate.vi"/>
				<Item Name="WPI_SolenoidSetBool.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/Deprecated/WPI_SolenoidSetBool.vi"/>
				<Item Name="WPI_SolenoidValue.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidValue.ctl"/>
				<Item Name="WPI_SolenoidSetEnum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidSetEnum.vi"/>
				<Item Name="WPI_SolenoidSet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Solenoid/WPI_SolenoidSet.vi"/>
				<Item Name="Spark MAX Control Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/Typedef/Spark MAX Control Type.ctl"/>
				<Item Name="Spark MAX PID Constant to Slot.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Private/Spark MAX PID Constant to Slot.vi"/>
				<Item Name="Spark MAX Set F Constant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set F Constant.vi"/>
				<Item Name="Spark MAX Set D Constant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set D Constant.vi"/>
				<Item Name="Spark MAX Set I Constant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set I Constant.vi"/>
				<Item Name="Spark MAX Set P Constant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set P Constant.vi"/>
				<Item Name="Spark MAX Set IZone Constant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set IZone Constant.vi"/>
				<Item Name="Spark MAX Set PIDF Output Range.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set PIDF Output Range.vi"/>
				<Item Name="Spark MAX Set PIDF Constants.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set PIDF Constants.vi"/>
				<Item Name="Spark MAX Set Output Advanced.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Set Output Advanced.vi"/>
				<Item Name="Spark MAX Get Sensor Velocity.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/REV Robotics/SPARK MAX/SubVI/Public/Spark MAX Get Sensor Velocity.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_RefNumRegistrySet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/CTRE_Phoenix_MotorControl_RefNumRegistrySet.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_NeutralMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/Controls/CTRE_Phoenix_MotorControl_NeutralMode.ctl"/>
				<Item Name="CTRE_Phoenix_MotorControl_SetNeutralMode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/CTRE_Phoenix_MotorControl_SetNeutralMode.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_UpdateRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/CTRE_Phoenix_MotorControl_UpdateRefNum.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_SetInverted.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/CTRE_Phoenix_MotorControl_SetInverted.vi"/>
				<Item Name="CTRE_Phoenix_MotorControl_RefNumRegistryGet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/ThirdParty/Phoenix-LabVIEW/Motor Controller/CTRE_Phoenix_MotorControl_RefNumRegistryGet.vi"/>
			</Item>
			<Item Name="FRC_NetworkCommunication.dll" Type="Document" URL="FRC_NetworkCommunication.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niimaqdx.dll" Type="Document" URL="niimaqdx.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FRC Robot Boot-up Deployment" Type="{69A947D5-514E-4E75-818E-69657C0547D8}">
				<Property Name="App_INI_aliasGUID" Type="Str">{7AAF6F56-ED86-4686-A01D-90E0BB9C8086}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A18A8773-40AE-4BF9-9DC4-FD6E80D0C49E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.NI.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8C1C8770-D686-4931-835E-3A364C203F20}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Build Robot Main.vi into an EXE that will run at startup on the roboRIO</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FRC Robot Boot-up Deployment</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Documents/Programming Projects/2020 Robot (All)/2020-Robot/Builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">&lt;none&gt;</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{6782B190-04E1-4A41-93AB-3F357B35791E}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">25</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">startup.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/startup.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].destName" Type="Str">ThirdParty lib</Property>
				<Property Name="Destination[2].path" Type="Path">/usr/local/frc/third-party/lib</Property>
				<Property Name="Destination[2].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{59B30347-6BE0-43F0-8F07-95178B73947D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/Target/Robot Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/Target/lib</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FRC Robot Boot-up Deployment</Property>
				<Property Name="TgtF_internalName" Type="Str">FRC Robot Boot-up Deployment</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2013 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FRC Robot Boot-up Deployment</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8C9344B8-7ED9-4E5F-92AE-3A9F547EFD4A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">startup.rtexe</Property>
			</Item>
		</Item>
	</Item>
</Project>
