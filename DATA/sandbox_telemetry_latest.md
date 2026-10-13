# sandbox_telemetry_parse — 2026-10-13 10:15:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1005676 lines=2519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2025 |
| `chrome_profile_sample` | 486 |
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
| `chromeBrowserPssKb` | {'int': 2025} |
| `chromeGpuPssKb` | {'int': 2025} |
| `chromeOtherPssKb` | {'int': 2025} |
| `chromeProcesses` | {'int': 2025} |
| `chromeProfiles` | {'int': 2025} |
| `chromeRendererMaxPssKb` | {'int': 2025} |
| `chromeRendererPssKb` | {'int': 2025} |
| `chromeRenderers` | {'int': 2025} |
| `chromeTabs` | {'int': 2025} |
| `chromeTabsProbedProfiles` | {'int': 2025} |
| `chromeUtilityPssKb` | {'int': 2025} |
| `desktopPssKb` | {'int': 2025} |
| `hostPssKb` | {'int': 2025} |
| `kind` | {'str': 2025} |
| `memAvailableKb` | {'int': 2025} |
| `memTotalKb` | {'int': 2025} |
| `otherPssKb` | {'int': 2025} |
| `processes` | {'int': 2025} |
| `pssFallbackProcesses` | {'int': 2025} |

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
| `cpuMillicores` | {'int': 485} |
| `display` | {'int': 486} |
| `kind` | {'str': 486} |
| `processes` | {'int': 486} |
| `pssKb` | {'int': 486} |
| `rendererMaxPssKb` | {'int': 486} |
| `renderers` | {'int': 486} |
| `tabs` | {'int': 486} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
