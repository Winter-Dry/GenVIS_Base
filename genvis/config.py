# -*- coding: utf-8 -*-
from detectron2.config import CfgNode as CN


def add_genvis_config(cfg):
    cfg.MODEL.GENVIS = CN()
    cfg.MODEL.GENVIS.LEN_CLIP_WINDOW = 5

    # WandB
    cfg.WANDB = CN({"ENABLED": False})
    cfg.WANDB.ENTITY = "bzty"
    cfg.WANDB.NAME = ""
    cfg.WANDB.PROJECT = "tdn-genvis"
    cfg.WANDB.GROUP = "YTVIS21_exp"
    cfg.WANDB.RESUME = 'None'
    cfg.WANDB.RESUME_ID = ''