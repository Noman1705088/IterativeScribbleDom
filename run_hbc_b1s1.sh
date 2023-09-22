config_file_expert="configs/hbc_b1s1/hbc_b1s1_config_expert.json"
config_file_mclust="configs/hbc_b1s1/hbc_b1s1_config_expert.json"

python visium_data_to_matrix_representation_converter.py --params ${config_file_expert}
echo "========================================"
echo "Data convertend in matrix representation"
python scribble_dom.py --params ${config_file_expert}
echo "========================================"
echo "Model run complete"
python best_model_estimator.py --params ${config_file_expert}
echo "========================================"
echo "Best model evaluated with goodness score"
python show_results.py --params ${config_file_expert}