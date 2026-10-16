# sandbox_telemetry_parse — 2026-10-16 13:40:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=496341 lines=1855
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1224 |
| `memory_sample` | 622 |
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
| `chromeBrowserPssKb` | {'int': 622} |
| `chromeGpuPssKb` | {'int': 622} |
| `chromeOtherPssKb` | {'int': 622} |
| `chromeProcesses` | {'int': 622} |
| `chromeProfiles` | {'int': 622} |
| `chromeRendererMaxPssKb` | {'int': 622} |
| `chromeRendererPssKb` | {'int': 622} |
| `chromeRenderers` | {'int': 622} |
| `chromeTabs` | {'int': 622} |
| `chromeTabsProbedProfiles` | {'int': 622} |
| `chromeUtilityPssKb` | {'int': 622} |
| `desktopPssKb` | {'int': 622} |
| `hostPssKb` | {'int': 622} |
| `kind` | {'str': 622} |
| `memAvailableKb` | {'int': 622} |
| `memTotalKb` | {'int': 622} |
| `otherPssKb` | {'int': 622} |
| `processes` | {'int': 622} |
| `pssFallbackProcesses` | {'int': 622} |

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
| `cpuMillicores` | {'int': 1221} |
| `display` | {'int': 1224} |
| `kind` | {'str': 1224} |
| `processes` | {'int': 1224} |
| `pssKb` | {'int': 1224} |
| `rendererMaxPssKb` | {'int': 1224} |
| `renderers` | {'int': 1224} |
| `tabs` | {'int': 1223} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
