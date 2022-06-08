#
# Copyright (C) 2021 The SparkOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
ifeq ($(filter spark_oriole spark_raven, $(TARGET_PRODUCT)),)
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/spark/config/device_framework_matrix.xml
endif
ifeq ($(filter lineage_oriole lineage_raven, $(TARGET_PRODUCT)),)
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/lineage/config/device_framework_matrix.xml
endif
