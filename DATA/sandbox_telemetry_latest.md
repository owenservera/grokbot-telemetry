# sandbox_telemetry_parse — 2026-10-13 11:27:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1043236 lines=2637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2084 |
| `chrome_profile_sample` | 545 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2084} |
| `chromeGpuPssKb` | {'int': 2084} |
| `chromeOtherPssKb` | {'int': 2084} |
| `chromeProcesses` | {'int': 2084} |
| `chromeProfiles` | {'int': 2084} |
| `chromeRendererMaxPssKb` | {'int': 2084} |
| `chromeRendererPssKb` | {'int': 2084} |
| `chromeRenderers` | {'int': 2084} |
| `chromeTabs` | {'int': 2084} |
| `chromeTabsProbedProfiles` | {'int': 2084} |
| `chromeUtilityPssKb` | {'int': 2084} |
| `desktopPssKb` | {'int': 2084} |
| `hostPssKb` | {'int': 2084} |
| `kind` | {'str': 2084} |
| `memAvailableKb` | {'int': 2084} |
| `memTotalKb` | {'int': 2084} |
| `otherPssKb` | {'int': 2084} |
| `processes` | {'int': 2084} |
| `pssFallbackProcesses` | {'int': 2084} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 544} |
| `display` | {'int': 545} |
| `kind` | {'str': 545} |
| `processes` | {'int': 545} |
| `pssKb` | {'int': 545} |
| `rendererMaxPssKb` | {'int': 545} |
| `renderers` | {'int': 545} |
| `tabs` | {'int': 545} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
