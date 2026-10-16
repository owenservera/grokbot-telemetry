# sandbox_telemetry_parse — 2026-10-16 12:21:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=440146 lines=1645
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1084 |
| `memory_sample` | 552 |
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
| `chromeBrowserPssKb` | {'int': 552} |
| `chromeGpuPssKb` | {'int': 552} |
| `chromeOtherPssKb` | {'int': 552} |
| `chromeProcesses` | {'int': 552} |
| `chromeProfiles` | {'int': 552} |
| `chromeRendererMaxPssKb` | {'int': 552} |
| `chromeRendererPssKb` | {'int': 552} |
| `chromeRenderers` | {'int': 552} |
| `chromeTabs` | {'int': 552} |
| `chromeTabsProbedProfiles` | {'int': 552} |
| `chromeUtilityPssKb` | {'int': 552} |
| `desktopPssKb` | {'int': 552} |
| `hostPssKb` | {'int': 552} |
| `kind` | {'str': 552} |
| `memAvailableKb` | {'int': 552} |
| `memTotalKb` | {'int': 552} |
| `otherPssKb` | {'int': 552} |
| `processes` | {'int': 552} |
| `pssFallbackProcesses` | {'int': 552} |

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
| `cpuMillicores` | {'int': 1081} |
| `display` | {'int': 1084} |
| `kind` | {'str': 1084} |
| `processes` | {'int': 1084} |
| `pssKb` | {'int': 1084} |
| `rendererMaxPssKb` | {'int': 1084} |
| `renderers` | {'int': 1084} |
| `tabs` | {'int': 1083} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
