<!-- BEGIN: MAIN -->
<div class="container">
  <div class="row">
    <div class="col">

      {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

      <span class="fs-4 fw-semibold d-block">{TITLE}</span>

      <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form">
        {COMMENT_FORM_PARAMS}
        <table class="table">
          <tr>
            <td class="w-25">
              {PHP.L.Poster}:
            </td>
            <td class="w-75">
              <!-- IF {AUTHOR_DETAILS_URL} -->
              <a href="{AUTHOR_DETAILS_URL}">{AUTHOR}</a>
              <!-- ELSE -->
              {AUTHOR}
              <!-- IF {AUTHOR_ID} == 0 AND {PHP.usr.id} > 0 -->
              ({PHP.L.Guest})
              <!-- ENDIF -->
              <!-- ENDIF -->
            </td>
          </tr>
          <tr>
            <td>
              {PHP.L.Ip}:
            </td>
            <td>
              {COMMENT_IP}
            </td>
          </tr>
          <tr>
            <td>
              {PHP.L.Date}:
            </td>
            <td>
              {COMMENT_DATE}
            </td>
          </tr>
          <tr>
            <td colspan="2">
              {COMMENT_FORM_TEXT}
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
              <a href="{BACK_URL}" class="btn btn-danger">{PHP.L.Back}</a>
            </td>
          </tr>
        </table>
      </form>

    </div>
  </div>
</div>
<!-- END: MAIN -->
