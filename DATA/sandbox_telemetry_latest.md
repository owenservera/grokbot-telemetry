# sandbox_telemetry_parse — 2026-10-13 05:04:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=838955 lines=1995
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1763 |
| `chrome_profile_sample` | 224 |
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
| `chromeBrowserPssKb` | {'int': 1763} |
| `chromeGpuPssKb` | {'int': 1763} |
| `chromeOtherPssKb` | {'int': 1763} |
| `chromeProcesses` | {'int': 1763} |
| `chromeProfiles` | {'int': 1763} |
| `chromeRendererMaxPssKb` | {'int': 1763} |
| `chromeRendererPssKb` | {'int': 1763} |
| `chromeRenderers` | {'int': 1763} |
| `chromeTabs` | {'int': 1763} |
| `chromeTabsProbedProfiles` | {'int': 1763} |
| `chromeUtilityPssKb` | {'int': 1763} |
| `desktopPssKb` | {'int': 1763} |
| `hostPssKb` | {'int': 1763} |
| `kind` | {'str': 1763} |
| `memAvailableKb` | {'int': 1763} |
| `memTotalKb` | {'int': 1763} |
| `otherPssKb` | {'int': 1763} |
| `processes` | {'int': 1763} |
| `pssFallbackProcesses` | {'int': 1763} |

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
| `cpuMillicores` | {'int': 223} |
| `display` | {'int': 224} |
| `kind` | {'str': 224} |
| `processes` | {'int': 224} |
| `pssKb` | {'int': 224} |
| `rendererMaxPssKb` | {'int': 224} |
| `renderers` | {'int': 224} |
| `tabs` | {'int': 224} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
