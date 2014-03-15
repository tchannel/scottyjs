<div class="header">
    <h1 class='solo-head'>phaser versions</h1>
</div>

<div class="content">
    <h2 class="content-subhead">Installed Versions</h2>

    {{#if installed}}

        {{#each installed}}
            {{this}}<br />
        {{/each}}
    {{else}}
        No versions have been installed
    {{/if}}

    <h2 class="content-subhead">Available Versions</h2>
    <p>
    <a class='button-secondary pure-button'><i class='fa fa-refresh'> </i> Refresh List</a>
    </p>

    <table class='pure-table'>
        <tbody>
            {{#each available}}
                <tr>
                    <td>{{this.name}}</td>
                    <td class='pure-g'>
                        {{#if this.installed}}
                            <a class='pure-u-1 button-success pure-button pure-button-disabled'>
                                <i class='fa fa-check'> </i> Installed
                            </a>
                        {{else}}
                            <a class='pure-u-1 button-success pure-button' href='#/versions/download/{{this.name}}'>
                                <i class='fa fa-download'> </i> Download
                            </a>
                        {{/if}}
                    </td>
                </tr>
            {{/each}}
        </tbody>
    </table>


</div>