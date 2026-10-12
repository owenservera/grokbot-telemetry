# sandbox_telemetry_parse — 2026-10-13 01:14:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=747915 lines=1709
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1620 |
| `chrome_profile_sample` | 81 |
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
| `chromeBrowserPssKb` | {'int': 1620} |
| `chromeGpuPssKb` | {'int': 1620} |
| `chromeOtherPssKb` | {'int': 1620} |
| `chromeProcesses` | {'int': 1620} |
| `chromeProfiles` | {'int': 1620} |
| `chromeRendererMaxPssKb` | {'int': 1620} |
| `chromeRendererPssKb` | {'int': 1620} |
| `chromeRenderers` | {'int': 1620} |
| `chromeTabs` | {'int': 1620} |
| `chromeTabsProbedProfiles` | {'int': 1620} |
| `chromeUtilityPssKb` | {'int': 1620} |
| `desktopPssKb` | {'int': 1620} |
| `hostPssKb` | {'int': 1620} |
| `kind` | {'str': 1620} |
| `memAvailableKb` | {'int': 1620} |
| `memTotalKb` | {'int': 1620} |
| `otherPssKb` | {'int': 1620} |
| `processes` | {'int': 1620} |
| `pssFallbackProcesses` | {'int': 1620} |

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
| `cpuMillicores` | {'int': 80} |
| `display` | {'int': 81} |
| `kind` | {'str': 81} |
| `processes` | {'int': 81} |
| `pssKb` | {'int': 81} |
| `rendererMaxPssKb` | {'int': 81} |
| `renderers` | {'int': 81} |
| `tabs` | {'int': 81} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
