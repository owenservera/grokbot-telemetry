# sandbox_telemetry_parse — 2026-10-13 06:21:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=881589 lines=2129
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1830 |
| `chrome_profile_sample` | 291 |
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
| `chromeBrowserPssKb` | {'int': 1830} |
| `chromeGpuPssKb` | {'int': 1830} |
| `chromeOtherPssKb` | {'int': 1830} |
| `chromeProcesses` | {'int': 1830} |
| `chromeProfiles` | {'int': 1830} |
| `chromeRendererMaxPssKb` | {'int': 1830} |
| `chromeRendererPssKb` | {'int': 1830} |
| `chromeRenderers` | {'int': 1830} |
| `chromeTabs` | {'int': 1830} |
| `chromeTabsProbedProfiles` | {'int': 1830} |
| `chromeUtilityPssKb` | {'int': 1830} |
| `desktopPssKb` | {'int': 1830} |
| `hostPssKb` | {'int': 1830} |
| `kind` | {'str': 1830} |
| `memAvailableKb` | {'int': 1830} |
| `memTotalKb` | {'int': 1830} |
| `otherPssKb` | {'int': 1830} |
| `processes` | {'int': 1830} |
| `pssFallbackProcesses` | {'int': 1830} |

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
| `cpuMillicores` | {'int': 290} |
| `display` | {'int': 291} |
| `kind` | {'str': 291} |
| `processes` | {'int': 291} |
| `pssKb` | {'int': 291} |
| `rendererMaxPssKb` | {'int': 291} |
| `renderers` | {'int': 291} |
| `tabs` | {'int': 291} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
