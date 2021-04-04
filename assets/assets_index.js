
import { dirname } from 'path';
import { fileURLToPath } from 'url';
const __dirname = dirname(fileURLToPath(import.meta.url));

export const CHAPTER5_REC1_DIR = __dirname + '/../assets/recordings/ma_common_route/ma05_star_craft';

export const RECORDING_LOCATIONS = [
  [__dirname + '/../assets/recordings/chapter3', 'game_recording_during_h'],
  [CHAPTER5_REC1_DIR],
  [CHAPTER5_REC1_DIR, 'game_recording_during_h'],
  [CHAPTER5_REC1_DIR, 'game_recording_after_h'],
  [__dirname + '/../assets/recordings/mb_hero_route/rec1'],
  [__dirname + '/../assets/recordings/mb_hero_route/rec2', 'game_recording_during_h'],
  [__dirname + '/../assets/recordings/mb_hero_route/rec2', 'game_recording_before_h2'],
  [__dirname + '/../assets/recordings/mb_hero_route/rec2', 'game_recording_during_h2'],
  [__dirname + '/../assets/recordings/mb_hero_route/rec2', 'game_recording_after_h2'],
  [__dirname + '/../assets/recordings/mb_hero_route/rec3'],
  [__dirname + '/../assets/recordings/mc_revenge_route/rec1'],
  [__dirname + '/../assets/recordings/mc_revenge_route/rec2'],
  [__dirname + '/../assets/recordings/mc_revenge_route/rec3'],
  [__dirname + '/../assets/recordings/mc_revenge_route/rec4'],
  [__dirname + '/../assets/recordings/mc_revenge_route/rec4', 'game_recording_during_h'],
  [__dirname + '/../assets/recordings/mc_revenge_route/rec4', 'game_recording_after_h'],
  [__dirname + '/../assets/recordings/md_devil_route/rec1'],
  [__dirname + '/../assets/recordings/md_devil_route/rec2'],
  [__dirname + '/../assets/recordings/md_devil_route/rec3'],
  [__dirname + '/../assets/recordings/md_devil_route/rec3', 'game_recording_during_h'],
  [__dirname + '/../assets/recordings/md_devil_route/rec3', 'game_recording_after_h'],
  [__dirname + '/../assets/recordings/md_devil_route/rec4'],
  [__dirname + '/../assets/recordings/md_devil_route/rec5'],
  [__dirname + '/../assets/recordings/md_devil_route/rec6'],
  [__dirname + '/../assets/recordings/md_devil_route/rec7'],
  [__dirname + '/../assets/recordings/md_devil_route/rec8'],
  [__dirname + '/../assets/recordings/md_devil_route/rec8', 'game_recording_during_h'],
  [__dirname + '/../assets/recordings/md_devil_route/rec8', 'game_recording_after_h'],
];
