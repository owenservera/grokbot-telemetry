# sandbox_telemetry_parse — 2026-10-13 01:03:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=740916 lines=1687
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1609 |
| `chrome_profile_sample` | 70 |
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
| `chromeBrowserPssKb` | {'int': 1609} |
| `chromeGpuPssKb` | {'int': 1609} |
| `chromeOtherPssKb` | {'int': 1609} |
| `chromeProcesses` | {'int': 1609} |
| `chromeProfiles` | {'int': 1609} |
| `chromeRendererMaxPssKb` | {'int': 1609} |
| `chromeRendererPssKb` | {'int': 1609} |
| `chromeRenderers` | {'int': 1609} |
| `chromeTabs` | {'int': 1609} |
| `chromeTabsProbedProfiles` | {'int': 1609} |
| `chromeUtilityPssKb` | {'int': 1609} |
| `desktopPssKb` | {'int': 1609} |
| `hostPssKb` | {'int': 1609} |
| `kind` | {'str': 1609} |
| `memAvailableKb` | {'int': 1609} |
| `memTotalKb` | {'int': 1609} |
| `otherPssKb` | {'int': 1609} |
| `processes` | {'int': 1609} |
| `pssFallbackProcesses` | {'int': 1609} |

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
| `cpuMillicores` | {'int': 69} |
| `display` | {'int': 70} |
| `kind` | {'str': 70} |
| `processes` | {'int': 70} |
| `pssKb` | {'int': 70} |
| `rendererMaxPssKb` | {'int': 70} |
| `renderers` | {'int': 70} |
| `tabs` | {'int': 70} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
