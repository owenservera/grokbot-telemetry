# sandbox_telemetry_parse — 2026-10-13 07:51:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=928679 lines=2277
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1904 |
| `chrome_profile_sample` | 365 |
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
| `chromeBrowserPssKb` | {'int': 1904} |
| `chromeGpuPssKb` | {'int': 1904} |
| `chromeOtherPssKb` | {'int': 1904} |
| `chromeProcesses` | {'int': 1904} |
| `chromeProfiles` | {'int': 1904} |
| `chromeRendererMaxPssKb` | {'int': 1904} |
| `chromeRendererPssKb` | {'int': 1904} |
| `chromeRenderers` | {'int': 1904} |
| `chromeTabs` | {'int': 1904} |
| `chromeTabsProbedProfiles` | {'int': 1904} |
| `chromeUtilityPssKb` | {'int': 1904} |
| `desktopPssKb` | {'int': 1904} |
| `hostPssKb` | {'int': 1904} |
| `kind` | {'str': 1904} |
| `memAvailableKb` | {'int': 1904} |
| `memTotalKb` | {'int': 1904} |
| `otherPssKb` | {'int': 1904} |
| `processes` | {'int': 1904} |
| `pssFallbackProcesses` | {'int': 1904} |

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
| `cpuMillicores` | {'int': 364} |
| `display` | {'int': 365} |
| `kind` | {'str': 365} |
| `processes` | {'int': 365} |
| `pssKb` | {'int': 365} |
| `rendererMaxPssKb` | {'int': 365} |
| `renderers` | {'int': 365} |
| `tabs` | {'int': 365} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
