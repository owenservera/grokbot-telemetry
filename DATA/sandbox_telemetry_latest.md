# sandbox_telemetry_parse — 2026-10-13 09:08:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=971309 lines=2411
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1971 |
| `chrome_profile_sample` | 432 |
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
| `chromeBrowserPssKb` | {'int': 1971} |
| `chromeGpuPssKb` | {'int': 1971} |
| `chromeOtherPssKb` | {'int': 1971} |
| `chromeProcesses` | {'int': 1971} |
| `chromeProfiles` | {'int': 1971} |
| `chromeRendererMaxPssKb` | {'int': 1971} |
| `chromeRendererPssKb` | {'int': 1971} |
| `chromeRenderers` | {'int': 1971} |
| `chromeTabs` | {'int': 1971} |
| `chromeTabsProbedProfiles` | {'int': 1971} |
| `chromeUtilityPssKb` | {'int': 1971} |
| `desktopPssKb` | {'int': 1971} |
| `hostPssKb` | {'int': 1971} |
| `kind` | {'str': 1971} |
| `memAvailableKb` | {'int': 1971} |
| `memTotalKb` | {'int': 1971} |
| `otherPssKb` | {'int': 1971} |
| `processes` | {'int': 1971} |
| `pssFallbackProcesses` | {'int': 1971} |

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
| `cpuMillicores` | {'int': 431} |
| `display` | {'int': 432} |
| `kind` | {'str': 432} |
| `processes` | {'int': 432} |
| `pssKb` | {'int': 432} |
| `rendererMaxPssKb` | {'int': 432} |
| `renderers` | {'int': 432} |
| `tabs` | {'int': 432} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
