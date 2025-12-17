data="../data/YesBut_data.json"
image_folder="../data/YesBut_images/"
write_path_surffix=".json"
#task options: contradiction | moral_mcq | title_mcq

use_caption=False

task="contradiction"
echo "==============================="
echo "claude3 eval"
echo "==============================="
python3 -u predict_claude_opus.py \
    --read_path ${data} \
    --write_path "../results/results_claude3_"${task}"_"${write_path_surffix} \
    --task ${task} \
    --use_caption ${use_caption} \
    --image_folder ${image_folder}

