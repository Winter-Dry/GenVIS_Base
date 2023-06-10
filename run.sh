python train_net_genvis.py --num-gpus 4 \
  --config-file configs/genvis/youtubevis_2021/genvis_R50_bs8_online.yaml \
  MODEL.WEIGHTS vita_r50_ytvis2021.pth \
  OUTPUT_DIR output/genvis_R50_bs16_online_feature_fusion_v0 \
  SOLVER.IMS_PER_BATCH 8 \
  SOLVER.STEPS '(50000,)' \
  SOLVER.MAX_ITER 90000 \
  WANDB.ENABLED True \
  WANDB.NAME genvis_R50_bs16_online_feature_fusion_v0