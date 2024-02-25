//
//  MediaPlayerTests.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/22/24.
//

import Foundation
import XCTest

final class MediaPlayerTests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    func testVideoPlayBack() {
        
      // Video play view with a play button
        let playButton = app.buttons["PlayButton"]
        XCTAssertTrue(playButton.exists)

        // Tap the play button
        playButton.tap()

        // Wait for video playback (you can add more assertions here)
        sleep(5) // Wait for 5 seconds

        // Verify that the video is playing
        XCTAssertTrue(app.otherElements["VideoPlayerView"].exists)

    }
    
    func testVideoPlaybackControls() {
 
        // Assume there's a video player view with play, pause, and seek buttons
        let playButton = app.buttons["PlayButton"]
        let pauseButton = app.buttons["PauseButton"]
        let seekForwardButton = app.buttons["SeekForwardButton"]

        // Tap play button
        playButton.tap()

        // Wait for video playback (e.g., 3 seconds)
        sleep(3)

        // Verify that pause button appears
        XCTAssertTrue(pauseButton.exists)

        // Seek forward (e.g., 10 seconds)
        seekForwardButton.tap()

        // Verify that video seeks correctly
        // Add more assertions as needed
    }

    
    func testVideoSeekAndPause() {
        // Assume there's a video player view with seek bar and play/pause button
        let seekBar = app.sliders["SeekBar"]
        let playPauseButton = app.buttons["PlayPauseButton"]

        // Seek to a specific position (e.g., 30 seconds)
        seekBar.adjust(toNormalizedSliderPosition: 0.5)

        // Verify that the video seeks correctly
        XCTAssertEqual(seekBar.value as? Double, 0.5)

        // Tap the play/pause button
        playPauseButton.tap()

        // Wait for a moment (e.g., 2 seconds)
        sleep(2)

        // Verify that video playback is paused
        XCTAssertFalse(app.otherElements["VideoPlayerView"].exists)
    }
    
    func testPictureInPicture() {
        // Assume there's a video player with PiP button
        let pipButton = app.buttons["PiPButton"]

        // Tap PiP button
        pipButton.tap()

        // Verify that video enters PiP mode
        XCTAssertTrue(app.otherElements["PiPOverlay"].exists)

        // Exit PiP mode (e.g., tap close button)
        // Add more assertions as needed
    }

    
    func testAudioVolumeControl() {
        // Assume there's an audio player with volume slider
        let volumeSlider = app.sliders["VolumeSlider"]

        // Set volume to 50%
        volumeSlider.adjust(toNormalizedSliderPosition: 0.5)

        // Verify that volume is set correctly
        XCTAssertEqual(volumeSlider.value as? Double, 0.5)
    }

    func testAudioRecording() {
        // Assume there's a record button
       let recordButton = app.buttons["RecordButton"]
       XCTAssertTrue(recordButton.exists)

       // Tap the record button
       recordButton.tap()

       // Wait for audio recording (you can add more assertions here)
       sleep(3) // Wait for 3 seconds

       // Verify that the recorded audio file exists
       XCTAssertTrue(app.otherElements["RecordedAudioFile"].exists)
    }
    
    func testAudioRecordingPermissions() {
        // Assume there's a record button
        let recordButton = app.buttons["RecordButton"]

        // Tap the record button
        recordButton.tap()

        // Verify that the system permission alert appears
        XCTAssertTrue(app.alerts["Allow “Your App” to access your microphone?"].exists)

        // Dismiss the alert (assuming "Allow" grants permission)
        app.alerts.buttons["Allow"].tap()

        // Verify that audio recording UI is now visible
        XCTAssertTrue(app.otherElements["RecordingUI"].exists)
    }

    func testVideoBufferingAndLoading() {
        // Assume there's a video player view with a loading spinner
        let loadingSpinner = app.activityIndicators["LoadingSpinner"]

       // Wait for video to start loading (e.g., 3 seconds)
       XCTAssertTrue(loadingSpinner.waitForExistence(timeout: 3))

       // Verify that the loading spinner disappears once video is buffered
       XCTAssertFalse(loadingSpinner.exists)
    }
}
