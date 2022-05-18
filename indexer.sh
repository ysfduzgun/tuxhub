#!/bin/bash

cd img
for img_full in *.png; 
do 
    echo $img_full;
    img=$(echo "${img_full%-*}")
    img_designer=$( echo "$img" |cut -d'-' -f1 )
    img_tag=$( echo "$img" |cut -d'-' -f2,3,4,5 )
    echo  
    echo $img_tag
    echo "==================="
    cat <<EOF>> ../img_list.html
          <div class="col-md-3">
            <div class="thumbnail">
              <a href="https://raw.githubusercontent.com/ysfduzgun/tuxhub/main/img/$img_full" target="_blank">
                <img src="https://raw.githubusercontent.com/ysfduzgun/tuxhub/main/img/$img_full" loading="lazy" class="img-thumbnail" alt="$img_designer" title="$img_tag">
              </a>
            </div>
            <div class="caption">
              <p class="img-font">$img_designer / $img_tag</p>
            </div>
          </div>
EOF
done