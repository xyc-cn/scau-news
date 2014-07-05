<?php
if ((($_FILES["file"]["type"] == "image/jpeg")
|| ($_FILES["file"]["type"] == "image/pjpeg"))
)
  {
  if ($_FILES["file"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
    }
  else
    {

    if (file_exists("images/gallery/" . $_FILES["file"]["name"]))
      {
      unlink("images/gallery/" . $_FILES["file"]["name"]);
      }
    
      move_uploaded_file($_FILES["file"]["tmp_name"],
      "images/gallery/" . $_FILES["file"]["name"]);
      
    }
  }
if ((($_FILES["file1"]["type"] == "image/jpeg")
|| ($_FILES["file1"]["type"] == "image/pjpeg"))
)
  {
  if ($_FILES["file1"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file1"]["error"] . "<br />";
    }
  else
    {

    if (file_exists("images/gallery/" . $_FILES["file1"]["name"]))
      {
      unlink("images/gallery/" . $_FILES["file1"]["name"]);
      }
    
      move_uploaded_file($_FILES["file1"]["tmp_name"],
      "images/gallery/" . $_FILES["file1"]["name"]);

      
    }
  }
  if ((($_FILES["file2"]["type"] == "image/jpeg")
|| ($_FILES["file2"]["type"] == "image/pjpeg"))
)
  {
  if ($_FILES["file2"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file2"]["error"] . "<br />";
    }
  else
    {

    if (file_exists("images/gallery/" . $_FILES["file2"]["name"]))
      {
      unlink("images/gallery/" . $_FILES["file2"]["name"]);
      }
    
      move_uploaded_file($_FILES["file2"]["tmp_name"],
      "images/gallery/" . $_FILES["file2"]["name"]);
      
    }
  }
  if ((($_FILES["file3"]["type"] == "image/jpeg")
|| ($_FILES["file3"]["type"] == "image/pjpeg"))
)
  {
  if ($_FILES["file3"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file3"]["error"] . "<br />";
    }
  else
    {


    if (file_exists("images/gallery/" . $_FILES["file3"]["name"]))
      {
      unlink("images/gallery/" . $_FILES["file3"]["name"]);
      }
    
      move_uploaded_file($_FILES["file3"]["tmp_name"],
      "images/gallery/" . $_FILES["file3"]["name"]);
      
    }
  }
   Header("Location:back_index.php");
?>