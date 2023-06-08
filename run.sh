python train_net_genvis.py --num-gpus 4 \
  --config-file configs/genvis/youtubevis_2021/genvis_R50_bs8_online.yaml \
  MODEL.WEIGHTS vita_r50_ytvis21.pth \
  OUTPUT_DIR output/genvis_R50_bs8_online \
  WANDB.ENABLED False \
  WANDB.NAME genvis_R50_bs8_online
