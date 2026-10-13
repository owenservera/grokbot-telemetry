# sandbox_telemetry_parse — 2026-10-13 04:32:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=822398 lines=1943
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1737 |
| `chrome_profile_sample` | 198 |
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
| `chromeBrowserPssKb` | {'int': 1737} |
| `chromeGpuPssKb` | {'int': 1737} |
| `chromeOtherPssKb` | {'int': 1737} |
| `chromeProcesses` | {'int': 1737} |
| `chromeProfiles` | {'int': 1737} |
| `chromeRendererMaxPssKb` | {'int': 1737} |
| `chromeRendererPssKb` | {'int': 1737} |
| `chromeRenderers` | {'int': 1737} |
| `chromeTabs` | {'int': 1737} |
| `chromeTabsProbedProfiles` | {'int': 1737} |
| `chromeUtilityPssKb` | {'int': 1737} |
| `desktopPssKb` | {'int': 1737} |
| `hostPssKb` | {'int': 1737} |
| `kind` | {'str': 1737} |
| `memAvailableKb` | {'int': 1737} |
| `memTotalKb` | {'int': 1737} |
| `otherPssKb` | {'int': 1737} |
| `processes` | {'int': 1737} |
| `pssFallbackProcesses` | {'int': 1737} |

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
| `cpuMillicores` | {'int': 197} |
| `display` | {'int': 198} |
| `kind` | {'str': 198} |
| `processes` | {'int': 198} |
| `pssKb` | {'int': 198} |
| `rendererMaxPssKb` | {'int': 198} |
| `renderers` | {'int': 198} |
| `tabs` | {'int': 198} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
