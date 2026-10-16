# sandbox_telemetry_parse — 2026-10-16 13:05:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=468241 lines=1750
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1154 |
| `memory_sample` | 587 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 587} |
| `chromeGpuPssKb` | {'int': 587} |
| `chromeOtherPssKb` | {'int': 587} |
| `chromeProcesses` | {'int': 587} |
| `chromeProfiles` | {'int': 587} |
| `chromeRendererMaxPssKb` | {'int': 587} |
| `chromeRendererPssKb` | {'int': 587} |
| `chromeRenderers` | {'int': 587} |
| `chromeTabs` | {'int': 587} |
| `chromeTabsProbedProfiles` | {'int': 587} |
| `chromeUtilityPssKb` | {'int': 587} |
| `desktopPssKb` | {'int': 587} |
| `hostPssKb` | {'int': 587} |
| `kind` | {'str': 587} |
| `memAvailableKb` | {'int': 587} |
| `memTotalKb` | {'int': 587} |
| `otherPssKb` | {'int': 587} |
| `processes` | {'int': 587} |
| `pssFallbackProcesses` | {'int': 587} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1151} |
| `display` | {'int': 1154} |
| `kind` | {'str': 1154} |
| `processes` | {'int': 1154} |
| `pssKb` | {'int': 1154} |
| `rendererMaxPssKb` | {'int': 1154} |
| `renderers` | {'int': 1154} |
| `tabs` | {'int': 1153} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
