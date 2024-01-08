import numpy as np
import pyaudio
import wave
import threading
import time
import subprocess
import os
import pyautogui
from cv2 import destroyAllWindows
from cv2 import VideoWriter_fourcc
from cv2 import VideoWriter
from cv2 import cvtColor
from cv2 import COLOR_BGR2RGB
from cv2 import VideoCapture
from cv2 import CAP_PROP_FRAME_HEIGHT
from cv2 import CAP_PROP_FRAME_WIDTH
from pathlib import Path
from random import choice
from moviepy.editor import *

CUR_PATH = f'{Path().resolve()}\\superutil\\recorder\\'

#Xs = [0, 8, 6, 14, 12, 4, 2, 0]
#Ys = [0, 2, 4, 12, 14, 6, 8, 0]

class VideoRecorder():

    def __init__ (self, filename='superutil/recorder/output.mp4', fourcc=('m', 'p', '4', 'v'), fps=60):
    #def __init__ (self, filename='output.mp4', fourcc='MJPG', fps=60):
        self.resolution = pyautogui.size()
        self.height = self.resolution.height
        self.width = self.resolution.width
        self.open = True
        self.fps = fps
        self.fourcc = fourcc
        self.size = (self.width, self.height)
        self.filename = filename
        self.writer = VideoWriter_fourcc(*self.fourcc)
        self.output = VideoWriter(self.filename, self.writer, self.fps, self.size)
        self.frame_counts = 1
        self.start_time = time.time()

    def record(self):

        while self.open:
            img = pyautogui.screenshot()
            #mouseX, mouseY = pyautogui.position()

            frame = np.array(img)
            frame = cvtColor(frame, COLOR_BGR2RGB)

            #Xthis = [1*x+mouseX for x in Xs]
            #Ythis = [1*y+mouseY for y in Ys]

            #points = list(zip(Xthis, Ythis))
            #points = np.array(points, 'int32')

            #cv2.fillPoly(frame, [points], color=[255, 255, 255])
            self.output.write(frame)
            self.frame_counts +=1
            #time.sleep(1/self.fps)
            #time.sleep(0.16)

    def stop(self):
        if self.open:
            self.open = False
            self.output.release()
            destroyAllWindows()

    def start(self):
        video_thread = threading.Thread(target=self.record)
        video_thread.start()

class AudioRecorder():

    def __init__ (self, filename='superutil/recorder/output.wav', rate=44100, chunck=1024, channels=2, device=1):
        self.open = True
        self.rate = rate
        self.chunck = chunck
        self.device = device
        self.channels = channels
        self.format = pyaudio.paInt16
        self.filename = filename
        self.audio = pyaudio.PyAudio()
        self.stream = self.audio.open(format=self.format,
                                      channels = self.channels,
                                      rate=self.rate,
                                      input=True,
                                      frames_per_buffer=self.chunck,
                                      input_device_index=device)
        self.frames = []

    def record(self):
        self.stream.start_stream()
        while self.open:
            data = self.stream.read(self.chunck)
            self.frames.append(data)
            if not self.open:
                break

    def stop(self):
        if self.open:
            self.open = False
            self.stream.stop_stream()
            self.stream.close()
            self.audio.terminate()
            waveFile = wave.open(self.filename, 'wb')
            waveFile.setnchannels(self.channels)
            waveFile.setsampwidth(self.audio.get_sample_size(self.format))
            waveFile.setframerate(self.rate)
            waveFile.writeframes(b''.join(self.frames))
            waveFile.close()

    def start(self):
        audio_thread = threading.Thread(target=self.record)
        audio_thread.start()


class VideoFormatter():

    def __init__(self):
        #os.chdir(f'{CUR_PATH}')
        self.path_greetings = f'{CUR_PATH}\\assets\\video\\greetings.mp4'
        self.path_farewell = f'{CUR_PATH}\\assets\\video\\farewell.mp4'
        self.path_recored = f'{CUR_PATH}\\test.mp4'
        self.path_backgrounds = f'{CUR_PATH}\\assets\\song'
        self.path_background = False
        self.path_logo = f'{CUR_PATH}\\assets\\image\\logo.png'
        self.clip_greetings = False
        self.clip_farewell = False
        self.clip_video = False
        self.clip_audio = False
        self.clip_background = False
        self.clip_produced = False

    def set_greetings_clip(self):
        reference = VideoCapture(self.path_recored)
        height = reference.get(CAP_PROP_FRAME_HEIGHT)
        width = reference.get(CAP_PROP_FRAME_WIDTH)
        tmp = VideoFileClip(self.path_greetings)
        self.clip_greetings = tmp.resize((width, height))
        del tmp
        del reference

    def set_farewell_clip(self):
        reference = VideoCapture(self.path_recored)
        height = reference.get(CAP_PROP_FRAME_HEIGHT)
        width = reference.get(CAP_PROP_FRAME_WIDTH)
        tmp = VideoFileClip(self.path_farewell)
        self.clip_farewell = tmp.resize((width, height))
        del tmp
        del reference

    def set_video_clip(self):
        reference = VideoCapture(self.path_recored)
        height = reference.get(CAP_PROP_FRAME_HEIGHT)
        width = reference.get(CAP_PROP_FRAME_WIDTH)
        tmp = VideoFileClip(self.path_recored)
        self.clip_video = tmp.resize((width, height))
        del tmp
        del reference

    def set_audio_clip(self):
        options  = os.listdir(self.path_backgrounds)
        chosen = choice(options)
        tmp = AudioFileClip(f'{self.path_backgrounds}\\{chosen}').set_duration(self.clip_video.duration)
        self.clip_background = (tmp.fx(afx.volumex, 0.05)
                                   .fx(afx.audio_fadeout, 1.0))
        del options
        del chosen
        del tmp


def start_AVrecording(filename='test'):
    global video_thread
    global audio_thread
    video_thread = VideoRecorder()
    audio_thread = AudioRecorder()
    video_thread.start()
    audio_thread.start()

    return filename

def start_video_recording(filename='test'):
    global video_thread
    video_thread = VideoRecorder()
    video_thread.start()

    return filename

def start_audio_recording(filename='test'):
    global audio_thread
    audio_thread = AudioRecorder()
    audio_thread.start()

    return filename

def stop_AVrecording(filename='test'):

    video_thread.stop()
    frame_counts = video_thread.frame_counts
    elapsed_time = time.time() - video_thread.start_time
    recorded_fps = frame_counts / elapsed_time
    print(f'total frames {frame_counts}')
    print(f'elapsed time {elapsed_time}')
    print(f'recorded fps {recorded_fps}')
    audio_thread.stop()
    #compact_file()
    #file_manager()

    #while threading.active_count() > 1:
    time.sleep(5)

    if abs(recorded_fps - 6) >= 0.01:
        cmd = f'ffmpeg -r {recorded_fps} -i superutil/recorder/output.mp4 -r 6 superutil/recorder/output2.mp4'
        subprocess.call(cmd, shell=True)

        cmd = f'ffmpeg -y -ac 2 -channel_layout stereo -i superutil/recorder/output.wav -i superutil/recorder/output2.mp4 superutil/recorder/{filename}.mp4'
        subprocess.call(cmd, shell=True)
    else:
        cmd = f'ffmpeg -y -ac 2 -channel_layout stereo -i superutil/recorder/output.wav -i superutil/recorder/output.mp4 superutil/recorder/{filename}.mp4'
        subprocess.call(cmd, shell=True)

    file_manager()


def file_manager(filename='test'):
    local_path = os.getcwd()
    if os.path.exists(str(local_path) + '/superutil/recorder/output.wav'):
        os.remove(str(local_path) + '/superutil/recorder/output.wav')
    if os.path.exists(str(local_path) + '/superutil/recorder/output.mp4'):
        os.remove(str(local_path) + '/superutil/recorder/output.mp4')
    if os.path.exists(str(local_path) + '/superutil/recorder/output2.mp4'):
        os.remove(str(local_path) + '/superutil/recorder/output2.mp4')

    generate_post_production_clip()

def generate_post_production_clip():

    movie = VideoFormatter()
    movie.set_video_clip()
    movie.set_audio_clip()
    movie.set_greetings_clip()
    movie.set_farewell_clip()

    logo = (ImageClip(movie.path_logo)
    .set_duration(movie.clip_video.duration)
    .resize(height=50)
    .margin(right=20, bottom=25, opacity=0)
    .set_pos(('right', 'bottom')))

    movie.clip_video = CompositeVideoClip([movie.clip_video, logo])
    movie.clip_audio = CompositeAudioClip([movie.clip_video.audio, movie.clip_background])
    movie.clip_produced = movie.clip_video.set_audio(movie.clip_audio)
    
    clips = [movie.clip_greetings, movie.clip_produced, movie.clip_farewell]
    slided_clips = [CompositeVideoClip([clip.fx(transfx.crossfadein, 0.4)]) for clip in clips]

    final = concatenate_videoclips(slided_clips)
    final.write_videofile(f'{CUR_PATH}\\final.mp4')

    if os.path.exists(str(CUR_PATH) + '/test.mp4'):
        os.remove(str(CUR_PATH) + '/test.mp4')

    file_speaker = f'{CUR_PATH}\\assets\\ssml\\chosen.txt'
    with open(file_speaker) as f:
        speaker = f.readlines()
    f.close()

    os.rename(f'{CUR_PATH}\\final.mp4', f'{CUR_PATH}\\{speaker[0]}_final.mp4')
    os.remove(file_speaker)


def iniciar_gravação_de_vídeo(requirement):
    if requirement == 'FALSE':
        start_AVrecording()


def encerrar_gravação_de_vídeo(requirement):
    if requirement == 'FALSE':
        stop_AVrecording()
